void release(){
  				cout<<"web2 greenball detected before"<<web2_green_number<<endl;
          cout<<"releasing right now!"<<endl;
					cout<<"releasing right now!"<<endl;
					cout<<"releasing right now!"<<endl;

          // targetting mid point of web1 greenballs.
          bool a = true;
          while(web2_green_number==0 && a){
            ros::spinOnce();
            ros::Duration(0.025).sleep();
            if(web1_green_number <2){
              turn_CCW(0.25);
            }
            else{ //web1_green_number>=2
              if(web1_green_X_average > 1.3){
                while(web1_green_X_average>0.6 && web1_green_number>=2 && web2_green_number ==0){
                  turn_CW(0.25);
                  ros::spinOnce();
                  ros::Duration(t).sleep();
                }
              }
             else if(web1_green_X_average < -1.3){
               while(web1_green_X_average<-0.6 && web1_green_number>=2 && web2_green_number ==0){
                 turn_CCW(0.25);
                 ros::spinOnce();
                 ros::Duration(t).sleep();
               }
             }
             else{
               a=false;
             }
           }
         }
         // decide closest ball (left? right?)
         if(abs(web1_green_X_min-web1_green_X_closest)<0.05){
             leftright = 0;   // left = closest.
         }
         else{
             leftright = 1;   // right = closest.
         }
         // go to closest
         while(ros::ok()){
           ros::spinOnce();
           ros::Duration(0.025).sleep();
           if (web2_green_number!=0){
               cout<<"web2 greenball detected"<<web2_green_number<<endl;
               cout<<"value of leftright="<<leftright<<endl;
               if(web2_green_Z <0.25){
                   if (leftright == 0){//when green ball was left ball
                     while(web2_green_number != 0 && web2_green_X_max-web2_green_X_min<400){
                       move_right();
                       ros::spinOnce();
                       sleep_count(t);
                     }
                     //go right open loop
                     // for(float k=0; k<1; k=k+t){
                     //  move_right();
                     //  sleep_count(t);
                     // }
                     for(float k=0; k<2; k=k+t){
                      data[20]=1;
                      data[0]=0;
                      data[1]=0;
                      data[4]=0;
                      data[5]=0;
                      write(c_socket, data, sizeof(data));
                      sleep_count(t);
                     }
                     //turn servo motor
                     dataInit();
                     break; //end while looop
                   }
                   else if(leftright ==1){//when green ball was right ball
                     while(web2_green_number != 0 && web2_green_X_max-web2_green_X_min<400){
                       move_left();
                       ros::spinOnce();
                       sleep_count(t);
                     }
                     //go r
                     //go left open loop
                     // for(float k=0; k<1; k=k+t){
                     //  move_left();
                     //  sleep_count(t);
                     // }
                     for(float k=0; k<2; k=k+t){
                      data[20]=1;
                        data[0]=0;
                        data[1]=0;
                        data[4]=0;
                        data[5]=0;
                      write(c_socket, data, sizeof(data));
                      sleep_count(t);
                     }
                     //turn servo motor
                     dataInit();
                     break; //end while loop
                   }
                   else{
                     cout<<"leftright is -1"<<endl;
                     break;
                   }
               }
               else{//web2_green_Z > 0.25
                 move_forward(0.3);
               }
           }

           else{//web2_green_number=0
             if(web1_green_X_target > 1.3){ //when closest green ball is on right side
                 while(web1_green_X_target > 0.8 && web1_green_number != 0 && web2_green_number ==0){
                   turn_CW(0.25);
                   ros::spinOnce();
                   sleep_count(t);
                 }
             }
             else if(web1_green_X_target < -1.3){
                 while(web1_green_X_target <-0.8 && web1_green_number != 0 && web2_green_number ==0){
                   turn_CCW(0.25);
                   ros::spinOnce();
                   sleep_count(t);
                 }
             }
             else{//when web1_green_closest in middle
                 cout<<"value of leftright="<<leftright<<endl;
                 move_forward(0.7);
             }
         }
       }
  }
