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

// webcam1 global variables
int web1_blue_number=0;
int web1_red_number=0;
float web1_blue_X_array[20];		// not necessary
float web1_blue_X;
float web1_blue_Z_array[20];		// not necessary
float web1_blue_Z;
float web1_red_X_array[20];
float web1_red_X;
float web1_red_Z_array[20];
float web1_red_Z;
int web1_green_number=0;
float web1_green_X_array[20];
float web1_green_X;
float web1_green_Z_array[20];
float web1_green_Z;
// webcam2 global variables
int web2_red_number=0;
float web2_red_X_array[20];			// not necessary
float web2_red_X;
int web2_blue_number=0;
float web2_blue_X_array[20];		// not necessary
float web2_blue_X;
// number of collected blue balls
int collection=0;

int action;

float acc=0.1;

float suc=0;

int c_socket, s_socket;
struct sockaddr_in c_addr;
int len;
int n;
float data[24];

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


void lidar_Callback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
		map_mutex.lock();

    int count = scan->scan_time / scan->time_increment;
    lidar_size=count;
    for(int i = 0; i < count; i++)
    {
        lidar_degree[i] = RAD2DEG(scan->angle_min + scan->angle_increment * i);
        lidar_distance[i]=scan->ranges[i];
    }
		map_mutex.unlock();

}
void camera1_Callback(const core_msgs::ball_position::ConstPtr& position_modify1)
{
	  map_mutex.lock();
	  // number assign
	  int count1 = position_modify1->b_size;
    web1_blue_number=count1;
		int count2 = position_modify1->g_size;
		web1_green_number=count2;
		int count3 = position_modify1->r_size;
		web1_red_number=count3;
		//ROS_INFO("recieved number = %f", web1_blue_number);
    cout<<"total number of blue balls from webcam1:"<<web1_blue_number<<endl;
    cout<<"total number of green balls from webcam1:"<<web1_green_number<<endl;

    // position assign webcam1 blue
		web1_blue_X=-10000;
		web1_blue_Z=-10000;
		web1_red_X = -100;
		web1_red_Z = 10000;
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

    map_mutex.unlock();
}

void camera2_Callback(const core_msgs::ball_position::ConstPtr& position_modify2)
{
	  map_mutex.lock();
	  // number assign
	  int count1 = position_modify2->r_size;
    web2_red_number=count1;
		int count2 = position_modify2->b_size;
		web2_blue_number=count2;
    cout<<"total number of red balls from webcam2:"<<web2_red_number<<endl;
    cout<<"total number of blue balls from webcam2:"<<web2_blue_number<<endl;

		// position assign webcam2 red
		web2_red_X=-10000;
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
		web2_blue_X=-10000;
		for(int i = 0; i < count2; i++)
		{
				web2_blue_X_array[i] = position_modify2->b_img_x[i];
				if(web1_blue_X < position_modify2->b_img_x[i]){
					web1_blue_X = position_modify2->b_img_x[i];
				}
				// std::cout << "degree : "<< ball_degree[i];
				// std::cout << "   distance : "<< ball_distance[i]<<std::endl;
		// ball_distance[i] = ball_X[i]*ball_X[i]+ball_Y[i]*ball_X[i];			//[groupD] we don't use any distance
		cout<<"web2 blue circle("<<i<<"):x="<<web2_blue_X_array[i]<<", z="<<endl;			//[groupD] for check
		}
		map_mutex.unlock();
}

void find_ball()
{
	data[20]=1;
}


void suction_check(){
	if(suc<=3){
		data[23]=1;
	}
	else{
		data[23]=0;
	}
}

void sleep_count(float sleeprate){

	ros::Duration(sleeprate).sleep();
	suc = suc + sleeprate;
	if(suc = 3){
		collection = collection + 1;
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
	 data[0] = 0;
	 data[1] = data[1]-acc;
	 data[4] = 0;
	 data[5] = 0;
  }
	suction_check();
	write(c_socket, data, sizeof(data));
	ROS_INFO("%f, %f, %f, %f", data[0], data[1], data[4], data[5]);
}

void turn_CW(float w){
 data[0] = 0;
 data[1] = 0;
 data[4] = w;
 data[5] = 0;
 suction_check();
 write(c_socket, data, sizeof(data));
 ROS_INFO("%f, %f, %f, %f", data[0], data[1], data[4], data[5]);
}

void turn_CCW(float w){
 data[0] = 0;
 data[1] = 0;
 data[4] = -w;
 data[5] = 0;
 suction_check();
 write(c_socket, data, sizeof(data));
 ROS_INFO("%f, %f, %f, %f", data[0], data[1], data[4], data[5]);
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
	ROS_INFO("%f, %f, %f, %f", data[0], data[1], data[4], data[5]);
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
	ROS_INFO("%f, %f, %f, %f", data[0], data[1], data[4], data[5]);
}

void pick_up(){

  suc = 0;

	if(web2_blue_X>0.4){
	 // turn
	 while(web2_blue_X>0.2){
		 turn_CCW(1);
		 ros::spinOnce();
		 ros::Duration(0.025).sleep();
	 }
	}
	else if(web2_blue_X<-0.4){
	 while(web2_blue_X<-0.2){
		turn_CW(1);
		ros::spinOnce();
		ros::Duration(0.025).sleep();
		}
	}
	else{
	 move_forward(0.7);
}

}


void release(){

}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "data_integration");
    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe<sensor_msgs::LaserScan>("/scan", 1000, lidar_Callback);
    ros::Subscriber sub1 = n.subscribe<core_msgs::ball_position>("/position_modify1", 1000, camera1_Callback);
    ros::Subscriber sub2 = n.subscribe<core_msgs::ball_position>("/position_modify2", 1000, camera2_Callback);

		dataInit();

		c_socket = socket(PF_INET, SOCK_STREAM, 0);
    c_addr.sin_addr.s_addr = inet_addr(IPADDR);
    c_addr.sin_family = AF_INET;
    c_addr.sin_port = htons(PORT);



		///////////////////////////////////////////////////////////////////////
		//	렙뷰와 통신이 되었는지 확인하는 코드 아래 코드를 활성화 후 노드를 실행 시켰을때///
		//	노드가 작동 -> 통신이 연결됨, Failed to connect 이라고 뜸 -> 통신이 안됨///
		////////////////////////////////////////////////////////////////////////
    // if(connect(c_socket, (struct sockaddr*) &c_addr, sizeof(c_addr)) == -1){
    //     printf("Failed to connect\n");
    //     close(c_socket);
    //     return -1;
    // }


		while(ros::ok){
		/////////////////////////////////////////////////////////////////////////////////////////////////
		// // 각노드에서 받아오는 센서 테이터가 잘 받아 왔는지 확인하는 코드 (ctrl + /)을 눌러 주석을 추가/제거할수 있다.///
		/////////////////////////////////////////////////////////////////////////////////////////////////

	 //  for(int i = 0; i < lidar_size; i++
   // {
	 //    std::cout << "degree : "<< lidar_degree[i];
	 //    std::cout << "   distance : "<< lidar_distance[i]<<std::endl;
	 //  }
		// for(int i = 0; i < ball_number; i++)
		// {
		// 	std::cout << "ball_X : "<< ball_X[i];
		// 	std::cout << "ball_Y : "<< ball_Y[i]<<std::endl;
   //
		// }



		////////////////////////////////////////////////////////////////
		// // 자율 주행을 예제 코드 (ctrl + /)을 눌러 주석을 추가/제거할수 있다.///
		////////////////////////////////////////////////////////////////
		// dataInit();
		// for(int i = 0; i < lidar_size-1; i++)
		// 	    {
		// 		if(lidar_distance[i]<lidar_distance[i+1]){lidar_obs=i;}
		// 		else if(lidar_distance[i]==lidar_distance[i+1]){lidar_obs=i;}
		// 		else {lidar_obs=i+1;}
		// 	    }
		// if(ball_number==0 || lidar_obs<0.3)
		// {
		// 		find_ball();
		// }
		// else
		// {
		// 	for(int i = 0; i < ball_number-1; i++)
		// 	    {
		// 		if(ball_distance[i]<ball_distance[i+1]){near_ball=i;}
		// 		else if(ball_distance[i]==ball_distance[i+1]){near_ball=i;}
		// 		else {near_ball=i+1;}
		// 	    }
		// 	if(ball_distance[near_ball]<0.1){data[4]=0; data[5]=0; data[21]=0;}
		// 	else
		// 	{
		// 		data[20]=1;
		// 		if(ball_X[near_ball]>0){data[4]=1;}  else{data[4]=-1;}
		// 		if(ball_Y[near_ball]>0){data[5]=1;}  else{data[5]=-1;}
		// 	}
		// }

		//자율 주행 알고리즘에 입력된 제어데이터(xbox 컨트롤러 데이터)를 myRIO에 송신(tcp/ip 통신)
	      // for (int i = 0; i < 24; i++){
	      // printf("%f ",data[i]);
				//
	      // }
	      // printf("\n");
			// printf("%d\n",action);

			// [groupD]
      ros::spinOnce();
			if(collection==3){
			// release
			//release(ball_position->midpoint, ball_position->distance4)
			}
			else{
			 if(web2_blue_number!=0){
				pick_up();
			 }
			 else{
				if(web1_blue_X>0.6){
				 // turn
				 while(web1_blue_X>0.3 && web2_blue_number==0 && web2_red_number==0){
					 turn_CCW(1);
					 ros::spinOnce();
	 				 sleep_count(0.025);
				 }
			}
				else if(web1_blue_X<-0.6){
				 while(web1_blue_X<-0.3 && web2_blue_number==0 && web2_red_number==0){
					turn_CW(1);
					ros::spinOnce();
					sleep_count(0.025);
				}
				}
				else{
				 if(web1_red_Z<0.5){
					// avoid start
					if(web1_red_X>0){
						//when red ball is on right side
					  while(web1_red_number != 0){
						//move left
						move_left();
						ros::spinOnce();
 	 				 sleep_count(0.025);
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
							sleep_count(0.025);
							k=k+0.025;
						}
					}

				 else{
					 //when red ball is on left side
					 while(web1_red_number != 0){
					 //move right and go forward
					 move_right();
					 ros::spinOnce();
	 				 sleep_count(0.025);
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
						 sleep_count(0.025);
						 k=k+0.025;
					 }
			 }
		  }
				 else{
					if(web1_blue_Z>0.5){
					 // go forward
					 move_forward(1);

			 }
					else{
					 if(web1_blue_X<-0.04){
						// go left
						while(web1_blue_X<-0.02 && web2_blue_number==0 && web2_red_number==0){
							turn_CCW(1);
							ros::spinOnce();
	 	 				 sleep_count(0.025);
						}
					 }
					 else if(web1_blue_X>0.04){
						// go right
						while(web1_blue_X>0.02 && web2_blue_number==0 && web2_red_number==0){
						turn_CW(1);
						ros::spinOnce();
 	 				 sleep_count(0.025);
					  }
					 }
					 else{
						// go forward
						move_forward(0.5);
					 }
					}
				 }
				}
			}
			}
		}
		 //ROS_INFO("%f, %f, %f, %f", data[0], data[1], data[4], data[5]);  // for exp
     //write(c_socket, data, sizeof(data));
		 sleep_count(0.025);

    return 0;
}
