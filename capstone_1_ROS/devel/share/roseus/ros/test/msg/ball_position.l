;; Auto-generated. Do not edit!


(when (boundp 'test::ball_position)
  (if (not (find-package "TEST"))
    (make-package "TEST"))
  (shadow 'ball_position (find-package "TEST")))
(unless (find-package "TEST::BALL_POSITION")
  (make-package "TEST::BALL_POSITION"))

(in-package "ROS")
;;//! \htmlinclude ball_position.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass test::ball_position
  :super ros::object
  :slots (_header _size1 _img_x1 _img_y1 _distance1 _size2 _img_x2 _img_y2 _distance2 _size3 _img_x3 _img_y3 _distance3 _size4 _img_x4 _img_y4 _midpoint _distance4 ))

(defmethod test::ball_position
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:size1 __size1) 0)
    ((:img_x1 __img_x1) 0.0)
    ((:img_y1 __img_y1) 0.0)
    ((:distance1 __distance1) 0.0)
    ((:size2 __size2) 0)
    ((:img_x2 __img_x2) 0.0)
    ((:img_y2 __img_y2) 0.0)
    ((:distance2 __distance2) 0.0)
    ((:size3 __size3) 0)
    ((:img_x3 __img_x3) 0.0)
    ((:img_y3 __img_y3) 0.0)
    ((:distance3 __distance3) 0.0)
    ((:size4 __size4) 0)
    ((:img_x4 __img_x4) 0.0)
    ((:img_y4 __img_y4) 0.0)
    ((:midpoint __midpoint) 0.0)
    ((:distance4 __distance4) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _size1 (round __size1))
   (setq _img_x1 (float __img_x1))
   (setq _img_y1 (float __img_y1))
   (setq _distance1 (float __distance1))
   (setq _size2 (round __size2))
   (setq _img_x2 (float __img_x2))
   (setq _img_y2 (float __img_y2))
   (setq _distance2 (float __distance2))
   (setq _size3 (round __size3))
   (setq _img_x3 (float __img_x3))
   (setq _img_y3 (float __img_y3))
   (setq _distance3 (float __distance3))
   (setq _size4 (round __size4))
   (setq _img_x4 (float __img_x4))
   (setq _img_y4 (float __img_y4))
   (setq _midpoint (float __midpoint))
   (setq _distance4 (float __distance4))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:size1
   (&optional __size1)
   (if __size1 (setq _size1 __size1)) _size1)
  (:img_x1
   (&optional __img_x1)
   (if __img_x1 (setq _img_x1 __img_x1)) _img_x1)
  (:img_y1
   (&optional __img_y1)
   (if __img_y1 (setq _img_y1 __img_y1)) _img_y1)
  (:distance1
   (&optional __distance1)
   (if __distance1 (setq _distance1 __distance1)) _distance1)
  (:size2
   (&optional __size2)
   (if __size2 (setq _size2 __size2)) _size2)
  (:img_x2
   (&optional __img_x2)
   (if __img_x2 (setq _img_x2 __img_x2)) _img_x2)
  (:img_y2
   (&optional __img_y2)
   (if __img_y2 (setq _img_y2 __img_y2)) _img_y2)
  (:distance2
   (&optional __distance2)
   (if __distance2 (setq _distance2 __distance2)) _distance2)
  (:size3
   (&optional __size3)
   (if __size3 (setq _size3 __size3)) _size3)
  (:img_x3
   (&optional __img_x3)
   (if __img_x3 (setq _img_x3 __img_x3)) _img_x3)
  (:img_y3
   (&optional __img_y3)
   (if __img_y3 (setq _img_y3 __img_y3)) _img_y3)
  (:distance3
   (&optional __distance3)
   (if __distance3 (setq _distance3 __distance3)) _distance3)
  (:size4
   (&optional __size4)
   (if __size4 (setq _size4 __size4)) _size4)
  (:img_x4
   (&optional __img_x4)
   (if __img_x4 (setq _img_x4 __img_x4)) _img_x4)
  (:img_y4
   (&optional __img_y4)
   (if __img_y4 (setq _img_y4 __img_y4)) _img_y4)
  (:midpoint
   (&optional __midpoint)
   (if __midpoint (setq _midpoint __midpoint)) _midpoint)
  (:distance4
   (&optional __distance4)
   (if __distance4 (setq _distance4 __distance4)) _distance4)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _size1
    4
    ;; float32 _img_x1
    4
    ;; float32 _img_y1
    4
    ;; float32 _distance1
    4
    ;; int32 _size2
    4
    ;; float32 _img_x2
    4
    ;; float32 _img_y2
    4
    ;; float32 _distance2
    4
    ;; int32 _size3
    4
    ;; float32 _img_x3
    4
    ;; float32 _img_y3
    4
    ;; float32 _distance3
    4
    ;; int32 _size4
    4
    ;; float32 _img_x4
    4
    ;; float32 _img_y4
    4
    ;; float32 _midpoint
    4
    ;; float32 _distance4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _size1
       (write-long _size1 s)
     ;; float32 _img_x1
       (sys::poke _img_x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _img_y1
       (sys::poke _img_y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance1
       (sys::poke _distance1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _size2
       (write-long _size2 s)
     ;; float32 _img_x2
       (sys::poke _img_x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _img_y2
       (sys::poke _img_y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance2
       (sys::poke _distance2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _size3
       (write-long _size3 s)
     ;; float32 _img_x3
       (sys::poke _img_x3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _img_y3
       (sys::poke _img_y3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance3
       (sys::poke _distance3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _size4
       (write-long _size4 s)
     ;; float32 _img_x4
       (sys::poke _img_x4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _img_y4
       (sys::poke _img_y4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _midpoint
       (sys::poke _midpoint (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance4
       (sys::poke _distance4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _size1
     (setq _size1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _img_x1
     (setq _img_x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _img_y1
     (setq _img_y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance1
     (setq _distance1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _size2
     (setq _size2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _img_x2
     (setq _img_x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _img_y2
     (setq _img_y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance2
     (setq _distance2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _size3
     (setq _size3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _img_x3
     (setq _img_x3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _img_y3
     (setq _img_y3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance3
     (setq _distance3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _size4
     (setq _size4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _img_x4
     (setq _img_x4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _img_y4
     (setq _img_y4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _midpoint
     (setq _midpoint (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance4
     (setq _distance4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get test::ball_position :md5sum-) "7ed3388ded1c7beb3973353beb402376")
(setf (get test::ball_position :datatype-) "test/ball_position")
(setf (get test::ball_position :definition-)
      "Header header




int32 size1
float32 img_x1
float32 img_y1
float32 distance1




int32 size2
float32 img_x2
float32 img_y2
float32 distance2



int32 size3
float32 img_x3
float32 img_y3
float32 distance3



int32 size4
float32 img_x4
float32 img_y4
float32 midpoint
float32 distance4







================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :test/ball_position "7ed3388ded1c7beb3973353beb402376")


