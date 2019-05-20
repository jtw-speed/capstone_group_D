#include <iostream>
#include <stdio.h>
#include <algorithm>
#include <fstream>
#include <chrono>
#include <string>
#include <signal.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <boost/thread.hpp>


#include <ros/ros.h>
#include <ros/package.h>
#include "core_msgs/ball_position.h"
#include "core_msgs/ball_position_modify.h"
#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include "std_msgs/Int8.h"
#include "std_msgs/String.h"


#include "opencv2/opencv.hpp"


#define RAD2DEG(x) ((x)*180./M_PI)

#define PORT 4000
#define IPADDR "172.16.0.1" // myRIO ipadress

using namespace std;

boost::mutex map_mutex;

int lidar_size;
float lidar_degree[400];
float lidar_distance[400];
float lidar_obs;

// int ball_number;
// float ball_X[20];
// float ball_Y[20];
// float ball_distance[20];
// int near_ball;					// groupD modify

float t = 0.025;

// webcam1 global variables
int web1_blue_number=0;
int web1_red_number=0;
float web1_blue_X_array[20];		// not necessary
float web1_blue_X = -100;
float web1_blue_Z_array[20];		// not necessary
float web1_blue_Z = -100;
float web1_red_X_array[20];
float web1_red_X = -100;
float web1_red_Z_array[20];
float web1_red_Z = 100;
int web1_green_number=0;
float web1_green_X_array[20];
float web1_green_X=-100;
float web1_green_Z_array[20];
float web1_green_Z=-100;
float web1_green_X_average;
float web1_green_X_min;
float web1_green_Z_min;
float web1_green_X_closest;
// webcam2 global variables
int web2_red_number=0;
float web2_red_X_array[20];			// not necessary
float web2_red_X = -100;
int web2_green_number = 0;
int web2_blue_number=0;
float web2_blue_X_array[20];		// not necessary
float web2_blue_X = -100;
float web2_green_X = -100;
float web2_green_Z = 100;

float web2_green_X_array[20];
float web2_green_Z_array[20];

int leftright = -1; //when left: 0 when right: 1

// number of collected blue balls
int collection=0;

int action;

float acc=0.1;

float suc=10;

int c_socket, s_socket;
struct sockaddr_in c_addr;
int len;
int n;
float data[24];
int suction_switch=0;

void dataInit()
{
	data[0] = 0; //lx*data[3];
	data[1] = 0; //ly*data[3];
	data[2] = 0; //GamepadStickAngle(_dev, STICK_LEFT);
	data[3] = 0; //GamepadStickLength(_dev, STICK_LEFT);
	data[4] = 0; //rx*data[7];
	data[5] = 0; //ry*data[7];
	data[6] = 0; //GamepadStickAngle(_dev, STICK_RIGHT);
	data[7] = 0; //GamepadStickLength(_dev, STICK_RIGHT);
	data[8] = 0; //GamepadTriggerLength(_dev, TRIGGER_LEFT);
	data[9] = 0; //GamepadTriggerLength(_dev, TRIGGER_RIGHT);
	data[10] = 0; //GamepadButtonDown(_dev, BUTTON_DPAD_UP);
	data[11] = 0; //GamepadButtonDown(_dev, BUTTON_DPAD_DOWN);
	data[12] = 0; //GamepadButtonDown(_dev, BUTTON_DPAD_LEFT);
	data[13] = 0; //GamepadButtonDown(_dev, BUTTON_DPAD_RIGHT);
	data[14] = 0; //GamepadButtonDown(_dev, BUTTON_A); // duct on/off
	data[15] = 0; //GamepadButtonDown(_dev, BUTTON_B);
	data[16] = 0; //GamepadButtonDown(_dev, BUTTON_X);
	data[17] = 0; //GamepadButtonDown(_dev, BUTTON_Y);
	data[18] = 0; //GamepadButtonDown(_dev, BUTTON_BACK);
	data[19] = 0; //GamepadButtonDown(_dev, BUTTON_START);
	data[20] = 0; //GamepadButtonDown(_dev, BUTTON_LEFT_SHOULDER);
	data[21] = 0; //GamepadButtonDown(_dev, BUTTON_RIGHT_SHOULDER);
	data[22] = 0; //GamepadButtonDown(_dev, BUTTON_LEFT_THUMB);//servo motor
	data[23] = 0; //GamepadButtonDown(_dev, BUTTON_RIGHT_THUMB);//suction
}


// void lidar_Callback(const sensor_msgs::LaserScan::ConstPtr& scan)
// {
// 		map_mutex.lock();
//
//     int count = scan->scan_time / scan->time_increment;
//     lidar_size=count;
//     for(int i = 0; i < count; i++)
//     {
//         lidar_degree[i] = RAD2DEG(scan->angle_min + scan->angle_increment * i);
//         lidar_distance[i]=scan->ranges[i];
//     }
// 		map_mutex.unlock();
//
// }
void camera1_Callback(const core_msgs::ball_position::ConstPtr& position_modify1)
{
	  map_mutex.lock();
    cout<<"callback 1 start"<<endl;
	  web1_blue_X = -100;
          web1_blue_Z = -100;
	  web1_red_X = -100;
	  web1_red_Z = 100;
	  web1_green_X = -100;
	  web1_green_Z = -100;

	  // number assign
	  int count1 = position_modify1->b_size;
    web1_blue_number=count1;
		int count2 = position_modify1->g_size;
		web1_green_number=count2;
		int count3 = position_modify1->r_size;
		web1_red_number=count3;
		//ROS_INFO("recieved number = %f", web1_blue_number);
    cout<<"total number of blue balls from webcam1:"<<web1_blue_number<<endl;
    cout<<"total numbCaper of green balls from webcam1:"<<web1_green_number<<endl;

    // position assign webcam1 blue

    for(int i = 0; i < count1; i++)
    {
        web1_blue_X_array[i] = position_modify1->b_img_x[i];
        web1_blue_Z_array[i] = position_modify1->b_img_z[i];
				if(web1_blue_X < position_modify1->b_img_x[i]){
					web1_blue_X = position_modify1->b_img_x[i];
					web1_blue_Z = position_modify1->b_img_z[i];
				}
        // std::cout << "degree : "<< ball_degree[i];
        // std::cout << "   distance : "<< ball_distance[i]<<std::endl;
		// ball_distance[i] = ball_X[i]*ball_X[i]+ball_Y[i]*ball_X[i];			//[groupD] we don't use any distance
    cout<<"web1 blue circle("<<i<<"):x="<<web1_blue_X_array[i]<<", z="<<web1_blue_Z_array[i]<<endl;			//[groupD] for check
    }
		// position assign webcam1 green
		for(int i = 0; i < count2; i++)
		{
				web1_green_X_array[i] = position_modify1->g_img_x[i];
				web1_green_Z_array[i] = position_modify1->g_img_z[i];
				// std::cout << "degree : "<< ball_degree[i];
				// std::cout << "   distance : "<< ball_distance[i]<<std::endl;
		// ball_distance[i] = ball_X[i]*ball_X[i]+ball_Y[i]*ball_X[i];			//[groupD] we don't use any distance
		cout<<"web1 green circle("<<i<<"):x="<<web1_green_X_array[i]<<", z="<<web1_green_Z_array[i]<<endl;			//[groupD] for check
		}
		for(int i = 0; i < count3; i++)
		{
				web1_red_X_array[i] = position_modify1->r_img_x[i];
				web1_red_Z_array[i] = position_modify1->r_img_z[i];
				if(web1_red_Z > position_modify1->r_img_z[i]){
					web1_red_X = position_modify1->r_img_x[i];
					web1_red_Z = position_modify1->r_img_z[i];
				}
		cout<<"web1 red circle("<<i<<"):x="<<web1_red_X_array[i]<<", z="<<web1_red_Z_array[i]<<endl;			//[groupD] for check
		}
		cout<<"callback 1 end"<<endl;

		web1_green_Z_min = web1_green_Z_array[0];
		web1_green_X_closest = web1_green_X_array[0];

		for(int i=1; i<web1_green_number; i++){
				if(web1_green_Z_min > web1_green_Z_array[i]){
					web1_green_Z_min = web1_green_Z_array[i];
					web1_green_X_closest = web1_green_X_array[i];
				}
		}


		web1_green_X_min = web1_green_X_array[0];
		for(int i=1; i<web1_green_number; i++){ //get smallest X value of green ball position
				if(web1_green_X_min > web1_green_X_array[i]){
					web1_green_X_min = web1_green_X_array[i];
				}
		}


		//finding out whether we are going to left green ball or right green ball

		if(abs(web1_green_X_min-web1_green_X_closest)<0.05){
				leftright = 0;
		}
		else{
				leftright = 1;
		}


		float web1_green_X_average = 0;

		for(int i=0; i<web1_green_number; i++){
				web1_green_X_average = web1_green_X_average + web1_green_X_array[i];
		}
		web1_green_X_average = web1_green_X_average/web1_green_number;


    map_mutex.unlock();
}

void camera2_Callback(const core_msgs::ball_position::ConstPtr& position_modify2)
{
	  map_mutex.lock();
		cout<<"callback 2 start"<<endl;
		web2_red_X = -100;
		web2_blue_X = -100;
	  // number assign
	  int count1 = position_modify2->r_size;
    web2_red_number=count1;
		int count2 = position_modify2->b_size;
		web2_blue_number=count2;
		int count3= position_modify2->g_size;
		web2_green_number=count3;

    cout<<"total number of red balls from webcam2:"<<web2_red_number<<endl;
    cout<<"total number of blue balls from webcam2:"<<web2_blue_number<<endl;
		cout<<"total number of green balls from webcam2:"<<web2_green_number<<endl;
		// position assign webcam2 red

    for(int i = 0; i < count1; i++)
    {
        web2_red_X_array[i] = position_modify2->r_img_x[i];
				if(web2_red_X < position_modify2->r_img_x[i]){
					web2_red_X = position_modify2->r_img_x[i];
				}
        // std::cout << "degree : "<< ball_degree[i];
        // std::cout << "   distance : "<< ball_distance[i]<<std::endl;
		// ball_distance[i] = ball_X[i]*ball_X[i]+ball_Y[i]*ball_X[i];			//[groupD] we don't use any distance
    cout<<"web2 red circle("<<i<<"):x="<<web2_red_X_array[i]<<", z="<<endl;			//[groupD] for check
    }
		// position assign webcam2 blue
		for(int i = 0; i < count2; i++)
		{
				web2_blue_X_array[i] = position_modify2->b_img_x[i];
				if(web2_blue_X < position_modify2->b_img_x[i]){
					web2_blue_X = position_modify2->b_img_x[i];
				}
				// std::cout << "degree : "<< ball_degree[i];
				// std::cout << "   distance : "<< ball_distance[i]<<std::endl;
		// ball_distance[i] = ball_X[i]*ball_X[i]+ball_Y[i]*ball_X[i];			//[groupD] we don't use any distance
		cout<<"web2 blue circle("<<i<<"):x="<<web2_blue_X_array[i]<<endl;			//[groupD] for check
		}

		for(int i = 0; i < count3; i++)
		{
				web2_green_X_array[i] = position_modify2->g_img_x[i];
				web2_green_Z_array[i] = position_modify2->g_img_z[i];
				if(web2_green_Z > position_modify2->g_img_z[i]){
					web2_green_X = position_modify2->g_img_x[i];
					web2_green_Z = position_modify2->g_img_z[i];
				}
				// std::cout << "degree : "<< ball_degree[i];
				// std::cout << "   distance : "<< ball_distance[i]<<std::endl;
				cout<<"web2 green circle("<<i<<"):x="<<web2_green_X_array[i]<<", z="<<web2_green_Z_array[i]<<endl;			//[groupD] for check
		// ball_distance[i] = ball_X[i]*ball_X[i]+ball_Y[i]*ball_X[i];			//[groupD] we don't use any distance
		}

    cout<<"callback 2 end"<<endl;
		map_mutex.unlock();
}

void find_ball()
{
	data[20]=1;
}


void suction_check(){
	if(suc<=3){
		data[21]=1;
	}
	else{
		data[21]=0;
	}
}

void sleep_count(float sleeprate){

	ros::Duration(sleeprate).sleep();
	suc = suc + sleeprate;
	cout<<"suc ="<<suc<<endl;
	cout<<collection<<endl;
	cout<<collection<<endl;
	cout<<collection<<endl;
	if(3<=suc && suction_switch ==1){
		collection = collection + 1;
		suction_switch = 0;
		cout<<"collected a ball!"<<endl;
	}
}

void move_forward(float v){
	if(data[1] < v){
	 data[0] = 0;
	 data[1] = data[1]+acc;
	 data[4] = 0;
	 data[5] = 0;
  }
	else if(data[1] > v){
	 data[	0] = 0;
	 data[1] = data[1]-acc;
	 data[4] = 0;
	 data[5] = 0;
  }
	suction_check();
	write(c_socket, data, sizeof(data));
  cout<<"void move forward"<<endl;
	ROS_INFO("%f, %f, %f, %f, %f", data[0], data[1], data[4], data[5],	data[21]);
}

void turn_CW(float w){
 data[0] = 0;
 data[1] = 0;
 data[4] = w;
 data[5] = 0;
 suction_check();
 write(c_socket, data, sizeof(data));
 cout<<"void turn CW"<<endl;
 ROS_INFO("%f, %f, %f, %f, %f", data[0], data[1], data[4], data[5],	data[21]);
}

void turn_CCW(float w){
 data[0] = 0;
 data[1] = 0;
 data[4] = -w;
 data[5] = 0;
 suction_check();
 write(c_socket, data, sizeof(data));
 cout<<"void turn CCW"<<endl;
ROS_INFO("%f, %f, %f, %f, %f", data[0], data[1], data[4], data[5],	data[21]);
}


void move_left(){
	if(data[0]>-1){
	data[0] = data[0]-acc;
	data[1] = 0;
	data[4] = 0;
	data[5] = 0;
   }
	 suction_check();
	write(c_socket, data, sizeof(data));
	cout<<"void move left"<<endl;
	ROS_INFO("%f, %f, %f, %f, %f", data[0], data[1], data[4], data[5],	data[21]);
}

void move_right(){
	if(data[0]<1){
	data[0] = data[0]+acc;
	data[1] = 0;
	data[4] = 0;
	data[5] = 0;
}
  suction_check();
	write(c_socket, data, sizeof(data));
	cout<<"void move right"<<endl;
	ROS_INFO("%f, %f, %f, %f, %f", data[0], data[1], data[4], data[5],	data[21]);
}

void pick_up(){
	suction_switch =1;
  suc = 0;
  cout<<"void starting pikcup"<<endl;
	if(web2_blue_X>1){
	 while(web2_blue_X>0.6 && web2_blue_number != 0){
		 turn_CW(0.6);
		 ros::spinOnce();
		 ros::Duration(t).sleep();
	 }
	}
	else if(web2_blue_X<-1){
	 while(web2_blue_X<-0.6 && web2_blue_number != 0){
		turn_CCW(0.6);
		ros::spinOnce();
		ros::Duration(t).sleep();
		}
	 }
	else{
	 move_forward(0.6);
  }

}



void release(){
		while(ros::ok){
					ros::spinOnce();
					cout<<"web2 greenball detected before"<<web2_green_number<<endl;
					if (web2_green_number=!0){
							cout<<"web2 greenball detected"<<web2_green_number<<endl;
							if(web2_green_Z <0.22){
									if (leftright == 0){//when green ball was left ball
										//go right open loop
										for(float k=0; k<1.5; k=k+t){
										 move_left();
										 sleep_count(t);
									  }
										//turn servo motor
										dataInit();
										break; //end while looop
									}
									else{//when green ball was right ball
										//go left open loop
										for(float k=0; k<1.5; k=k+t){
										 move_left();
										 sleep_count(t);
									  }
										//turn servo motor
										dataInit();
										break; //end while loop
									}
							}

							else{
								move_forward(0.6);
								ros::Duration(t).sleep();

							}

					}


				  if(web1_green_number <2){//when green ball is under 2
						if(web1_green_number ==0)
							turn_CCW(0.5);
						else{
							if(web1_green_Z_min > 1.3){
						    cout<<"looking for 2 green balls, current:"<<web1_green_number<<endl;
								turn_CCW(0.5);
							}
						}
					}

					else{//when green ball is 2 in web1
							cout<<"two green balls detected"<<endl;


							if(web1_green_Z_min>1.3){
									if(web1_green_X_average > 1){
										while(web1_green_X_average>0.6){
											turn_CW(0.6);
											ros::spinOnce();
											ros::Duration(t).sleep();
										}
									}
									else if(web1_green_X_average < -1){
										while(web1_green_X_average<-0.6){
											turn_CCW(0.6);
											ros::spinOnce();
											ros::Duration(t).sleep();
										}
									}
									else{
										move_forward(1);

									}
							}

							else{ //when closest green ball is under 1.3 meter
									if(web1_green_X_closest > 1){ //when closest green ball is on right side
											while(web1_green_X_closest > 0.6){
												turn_CW(0.5);
												ros::spinOnce();
												ros::Duration(t).sleep();
											}
									}
									else if(web1_green_X_closest < -1){
											while(web1_green_X_closest <-0.6){
												turn_CCW(0.5);
												ros::spinOnce();
												ros::Duration(t).sleep();
											}
									}
									else{
											move_forward(1);
									}
							}

				 }
				 ros::Duration(t).sleep();
		 }
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "data_integration");
    ros::NodeHandle n;

    //ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/scan", 1000, lidar_Callback);
    ros::Subscriber sub1 = n.subscribe<core_msgs::ball_position>("/position_modify1", 1000, camera1_Callback);
    ros::Subscriber sub2 = n.subscribe<core_msgs::ball_position>("/position_modify2", 1000, camera2_Callback);

		dataInit();

		c_socket = socket(PF_INET, SOCK_STREAM, 0);
    c_addr.sin_addr.s_addr = inet_addr(IPADDR);
    c_addr.sin_family = AF_INET;
    c_addr.sin_port = htons(PORT);

     if(connect(c_socket, (struct sockaddr*) &c_addr, sizeof(c_addr)) == -1){
        printf("Failed to connect\n");
        close(c_socket);
         return -1;
    }


		while(ros::ok){
			// [groupD]
			//map_mutex.lock();
      ros::spinOnce();
     	//map_mutex.unlock();
			if(collection==3){
				data[0] = 0;
			  data[1] = 0;
			  data[4] = 0;
			  data[5] = 0;
				release();
				break;
			// release
			//release(ball_position->midpoint, ball_position->distance4)
			}
			else{
			 if(web2_blue_number!=0){
				pick_up();
			 }
			 else{
				if(web1_blue_X>1){
				 // turn
				int q=0;
				cout<<"check"<<web1_blue_X<<endl;
				 while(web1_blue_X>0.3 && web2_blue_number==0){
					cout<<"check1"<<web1_blue_X<<endl;
					 cout<<q<<endl;
					 turn_CW(0.7);
					 cout<<"turning CW"<<endl;
					 ros::spinOnce();
	 				 sleep_count(t);
					 q++;
				 }
			}
				else if(web1_blue_X<-1){
				 while(web1_blue_X<-0.3 && web2_blue_number==0 && web2_red_number==0){
					turn_CCW(0.7);
					cout<<"turning CCW"<<endl;
					ros::spinOnce();
					sleep_count(t);
				  }
				}
				else{
				 if(web1_red_Z<0.5){
					// avoid start
					if(web1_red_X>0){
						//when red ball is on right side
					  while(web1_red_number != 0){
						//move left and go forward
						cout<<"open loop moving left"<<endl;
						move_left();
						ros::spinOnce();
 	 				 sleep_count(t);
			 }
			      float k = 0;
			      while(k<1.5){
							//go forward for a while
							data[0] = 0;
					    data[1] = 1;
							data[4] = 0;
							data[5] = 0;
							suction_check();
							write(c_socket, data, sizeof(data));
							cout<<"open loop moving forward"<<endl;
							sleep_count(t);
							k=k+t;
						}
						//turn CW for a while
						k=0;
						while(k<1){
							data[0] = 0;
							data[1] = 0;
							data[4] = 1;
							data[5] = 0;
							suction_check();
							write(c_socket, data, sizeof(data));
							cout<<"open loop turning CW"<<endl;
							sleep_count(t);
							k=k+t;
						}
					}

				 else{
					 //when red ball is on left side
					 while(web1_red_number != 0){
					 //move right and go forward
					 cout<<"open loop moving right"<<endl;
					 move_right();
					 ros::spinOnce();
	 				 sleep_count(t);
			}
					 float k = 0;
					 while(k<1.5){
						 //go forward for a while
						 data[0] = 0;
						 data[1] = 1;
						 data[4] = 0;
						 data[5] = 0;
						 suction_check();
						 write(c_socket, data, sizeof(data));
						 cout<<"open loop moving forward"<<endl;
						 sleep_count(t);
						 k=k+t;
					 }
			 }
		  }
				 else{
					//if(web1_blue_Z>0.5){
					 // go forward
					 move_forward(1);

			 //}
					//else{
					// if(web1_blue_X<-0.4){
					//	// go left
					//	while(web1_blue_X<-0.2 && web2_blue_number==0 && web2_red_number==0){
					//		turn_CCW(0.7);
					//		ros::spinOnce();
	 	 			//	 sleep_count(t);
					//	}
					// }
					// else if(web1_blue_X>0.4){
					//	// go right
					//	while(web1_blue_X>0.2 && web2_blue_number==0 && web2_red_number==0){
					//	cout<<"check3"<<endl;
					//	turn_CW(0.7);
					//	ros::spinOnce();
 	 				// sleep_count(t);
					//  }
					// }
					// else{
					//	// go forward
					//	move_forward(0.5);
					// }
					//}
			  	 }
			 	 }
	  		}
			}
		ROS_INFO("%f, %f, %f, %f, %f", data[0], data[1], data[4], data[5],	data[21]);
		 cout<<"end of while loop"<<endl;
     sleep_count(t);

		}
		 //ROS_INFO("%f, %f, %f, %f, %f", data[0], data[1], data[4], data[5],	data[21]);  // for exp
     //write(c_socket, data, sizeof(data));
    cout<<"quit while loop"<<endl;

    return 0;
}
