#include "ros/ros.h"
#include "test/ball_position.h"

int old;
int i = 0;
float data[24];

void pick_up(int size2, float ball_X_2, float ball_y_2){
 if(size2=1){
  data[14]=1;
  if(ball_X_2<-0.1){
   // go left
   data[2] = 180;
   data[3] = 20000;
   data[6] = 1;
   data[7] = 1;
  }
  if(ball_X_2>0.1){
   // go right
   data[2] = 0;
   data[3] = 20000;
   data[6] = 1;
   data[7] = 1;
  }
  if(-0.1<ball_X_2<0.1){
   // go forward
   data[2] = 90;
   data[3] = 20000;
   data[6] = 1;
   data[7] = 1;
  }
  old = size2;
 }
 if(old-size2==1){
  // stop
  data[14]=0;
  i++;
  old = 0;
 }
}



void camera_Callback(const test::ball_position::ConstPtr& ball_position){
 if(i==3){
 // release
 //release(ball_position->midpoint, ball_position->distance4)
 }
 else{
  if(ball_position->size2==1){
   // pick, i++
   pick_up(ball_position->size2, ball_position->img_x1, ball_position->img_x2);
  }
  else{
   if(ball_position->img_x1<-0.1 || ball_position->img_x1>0.1){
    // turn
    data[2] = 1;
    data[3] = 1;
    data[6] = 180;
    data[7] = 20000;    
   }
   else{
    if(ball_position->size3==1){
     // avoid(go right)
     data[2] = 0;
     data[3] = 20000;
     data[6] = 1;
     data[7] = 1;
    }
    else{
     if(ball_position->distance1>0.1){
      // go forward
      data[2] = 90;
      data[3] = 20000;
      data[6] = 1;
      data[7] = 1;
     }
     else{
      if(ball_position->img_x1<-0.01){
       // go right
       data[2] = 0;
       data[3] = 20000;
       data[6] = 1;
       data[7] = 1;
      }
      if(ball_position->img_x1>0.01){
       // go left
       data[2] = 180;
       data[3] = 20000;
       data[6] = 1;
       data[7] = 1;
      }
      else{
       // go forward
       data[2] = 90;
       data[3] = 20000;
       data[6] = 1;
       data[7] = 1;
      }
     }
    }
   }
  }
 }
ROS_INFO("%f, %f, %f, %f", data[2], data[3], data[6], data[7]);  // for exp
}

int main(int argc, char **argv){
 ros::init(argc, argv, "data_integation");
 ros::NodeHandle n;
 ros::Subscriber sub = n.subscribe<test::ball_position>("/position", 1000, camera_Callback);
 ros::spin();
}



// 지그재그 문제 -> True/false local variable로 해결




