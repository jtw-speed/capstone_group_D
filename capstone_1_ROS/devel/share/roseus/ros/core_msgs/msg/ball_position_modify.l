;; Auto-generated. Do not edit!


(when (boundp 'core_msgs::ball_position_modify)
  (if (not (find-package "CORE_MSGS"))
    (make-package "CORE_MSGS"))
  (shadow 'ball_position_modify (find-package "CORE_MSGS")))
(unless (find-package "CORE_MSGS::BALL_POSITION_MODIFY")
  (make-package "CORE_MSGS::BALL_POSITION_MODIFY"))

(in-package "ROS")
;;//! \htmlinclude ball_position_modify.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass core_msgs::ball_position_modify
  :super ros::object
  :slots (_header _r_size_m _b_size_m _g_size_m _b_img_x_m _b_img_y_m _b_img_z_m _r_img_x_m _r_img_y_m _r_img_z_m _g_img_x_m _g_img_y_m _g_img_z_m ))

(defmethod core_msgs::ball_position_modify
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:r_size_m __r_size_m) 0)
    ((:b_size_m __b_size_m) 0)
    ((:g_size_m __g_size_m) 0)
    ((:b_img_x_m __b_img_x_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:b_img_y_m __b_img_y_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:b_img_z_m __b_img_z_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:r_img_x_m __r_img_x_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:r_img_y_m __r_img_y_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:r_img_z_m __r_img_z_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:g_img_x_m __g_img_x_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:g_img_y_m __g_img_y_m) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:g_img_z_m __g_img_z_m) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _r_size_m (round __r_size_m))
   (setq _b_size_m (round __b_size_m))
   (setq _g_size_m (round __g_size_m))
   (setq _b_img_x_m __b_img_x_m)
   (setq _b_img_y_m __b_img_y_m)
   (setq _b_img_z_m __b_img_z_m)
   (setq _r_img_x_m __r_img_x_m)
   (setq _r_img_y_m __r_img_y_m)
   (setq _r_img_z_m __r_img_z_m)
   (setq _g_img_x_m __g_img_x_m)
   (setq _g_img_y_m __g_img_y_m)
   (setq _g_img_z_m __g_img_z_m)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:r_size_m
   (&optional __r_size_m)
   (if __r_size_m (setq _r_size_m __r_size_m)) _r_size_m)
  (:b_size_m
   (&optional __b_size_m)
   (if __b_size_m (setq _b_size_m __b_size_m)) _b_size_m)
  (:g_size_m
   (&optional __g_size_m)
   (if __g_size_m (setq _g_size_m __g_size_m)) _g_size_m)
  (:b_img_x_m
   (&optional __b_img_x_m)
   (if __b_img_x_m (setq _b_img_x_m __b_img_x_m)) _b_img_x_m)
  (:b_img_y_m
   (&optional __b_img_y_m)
   (if __b_img_y_m (setq _b_img_y_m __b_img_y_m)) _b_img_y_m)
  (:b_img_z_m
   (&optional __b_img_z_m)
   (if __b_img_z_m (setq _b_img_z_m __b_img_z_m)) _b_img_z_m)
  (:r_img_x_m
   (&optional __r_img_x_m)
   (if __r_img_x_m (setq _r_img_x_m __r_img_x_m)) _r_img_x_m)
  (:r_img_y_m
   (&optional __r_img_y_m)
   (if __r_img_y_m (setq _r_img_y_m __r_img_y_m)) _r_img_y_m)
  (:r_img_z_m
   (&optional __r_img_z_m)
   (if __r_img_z_m (setq _r_img_z_m __r_img_z_m)) _r_img_z_m)
  (:g_img_x_m
   (&optional __g_img_x_m)
   (if __g_img_x_m (setq _g_img_x_m __g_img_x_m)) _g_img_x_m)
  (:g_img_y_m
   (&optional __g_img_y_m)
   (if __g_img_y_m (setq _g_img_y_m __g_img_y_m)) _g_img_y_m)
  (:g_img_z_m
   (&optional __g_img_z_m)
   (if __g_img_z_m (setq _g_img_z_m __g_img_z_m)) _g_img_z_m)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _r_size_m
    4
    ;; int32 _b_size_m
    4
    ;; int32 _g_size_m
    4
    ;; float32[] _b_img_x_m
    (* 4    (length _b_img_x_m)) 4
    ;; float32[] _b_img_y_m
    (* 4    (length _b_img_y_m)) 4
    ;; float32[] _b_img_z_m
    (* 4    (length _b_img_z_m)) 4
    ;; float32[] _r_img_x_m
    (* 4    (length _r_img_x_m)) 4
    ;; float32[] _r_img_y_m
    (* 4    (length _r_img_y_m)) 4
    ;; float32[] _r_img_z_m
    (* 4    (length _r_img_z_m)) 4
    ;; float32[] _g_img_x_m
    (* 4    (length _g_img_x_m)) 4
    ;; float32[] _g_img_y_m
    (* 4    (length _g_img_y_m)) 4
    ;; float32[] _g_img_z_m
    (* 4    (length _g_img_z_m)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _r_size_m
       (write-long _r_size_m s)
     ;; int32 _b_size_m
       (write-long _b_size_m s)
     ;; int32 _g_size_m
       (write-long _g_size_m s)
     ;; float32[] _b_img_x_m
     (write-long (length _b_img_x_m) s)
     (dotimes (i (length _b_img_x_m))
       (sys::poke (elt _b_img_x_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _b_img_y_m
     (write-long (length _b_img_y_m) s)
     (dotimes (i (length _b_img_y_m))
       (sys::poke (elt _b_img_y_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _b_img_z_m
     (write-long (length _b_img_z_m) s)
     (dotimes (i (length _b_img_z_m))
       (sys::poke (elt _b_img_z_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _r_img_x_m
     (write-long (length _r_img_x_m) s)
     (dotimes (i (length _r_img_x_m))
       (sys::poke (elt _r_img_x_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _r_img_y_m
     (write-long (length _r_img_y_m) s)
     (dotimes (i (length _r_img_y_m))
       (sys::poke (elt _r_img_y_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _r_img_z_m
     (write-long (length _r_img_z_m) s)
     (dotimes (i (length _r_img_z_m))
       (sys::poke (elt _r_img_z_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _g_img_x_m
     (write-long (length _g_img_x_m) s)
     (dotimes (i (length _g_img_x_m))
       (sys::poke (elt _g_img_x_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _g_img_y_m
     (write-long (length _g_img_y_m) s)
     (dotimes (i (length _g_img_y_m))
       (sys::poke (elt _g_img_y_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _g_img_z_m
     (write-long (length _g_img_z_m) s)
     (dotimes (i (length _g_img_z_m))
       (sys::poke (elt _g_img_z_m i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _r_size_m
     (setq _r_size_m (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b_size_m
     (setq _b_size_m (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _g_size_m
     (setq _g_size_m (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _b_img_x_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _b_img_x_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _b_img_x_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _b_img_y_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _b_img_y_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _b_img_y_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _b_img_z_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _b_img_z_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _b_img_z_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _r_img_x_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_img_x_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_img_x_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _r_img_y_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_img_y_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_img_y_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _r_img_z_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_img_z_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_img_z_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _g_img_x_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _g_img_x_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _g_img_x_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _g_img_y_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _g_img_y_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _g_img_y_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _g_img_z_m
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _g_img_z_m (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _g_img_z_m i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get core_msgs::ball_position_modify :md5sum-) "490c270e325fa56f68fcb30ddb129e2e")
(setf (get core_msgs::ball_position_modify :datatype-) "core_msgs/ball_position_modify")
(setf (get core_msgs::ball_position_modify :definition-)
      "Header header
int32 r_size_m
int32 b_size_m
int32 g_size_m

float32[] b_img_x_m
float32[] b_img_y_m
float32[] b_img_z_m

float32[] r_img_x_m
float32[] r_img_y_m
float32[] r_img_z_m

float32[] g_img_x_m
float32[] g_img_y_m
float32[] g_img_z_m

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



(provide :core_msgs/ball_position_modify "490c270e325fa56f68fcb30ddb129e2e")


