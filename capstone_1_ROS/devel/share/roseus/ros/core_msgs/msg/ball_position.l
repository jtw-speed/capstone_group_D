;; Auto-generated. Do not edit!


(when (boundp 'core_msgs::ball_position)
  (if (not (find-package "CORE_MSGS"))
    (make-package "CORE_MSGS"))
  (shadow 'ball_position (find-package "CORE_MSGS")))
(unless (find-package "CORE_MSGS::BALL_POSITION")
  (make-package "CORE_MSGS::BALL_POSITION"))

(in-package "ROS")
;;//! \htmlinclude ball_position.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass core_msgs::ball_position
  :super ros::object
  :slots (_header _r_size _b_size _g_size _b_img_x _b_img_y _b_img_z _r_img_x _r_img_y _r_img_z _g_img_x _g_img_y _g_img_z ))

(defmethod core_msgs::ball_position
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:r_size __r_size) 0)
    ((:b_size __b_size) 0)
    ((:g_size __g_size) 0)
    ((:b_img_x __b_img_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:b_img_y __b_img_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:b_img_z __b_img_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:r_img_x __r_img_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:r_img_y __r_img_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:r_img_z __r_img_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:g_img_x __g_img_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:g_img_y __g_img_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:g_img_z __g_img_z) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _r_size (round __r_size))
   (setq _b_size (round __b_size))
   (setq _g_size (round __g_size))
   (setq _b_img_x __b_img_x)
   (setq _b_img_y __b_img_y)
   (setq _b_img_z __b_img_z)
   (setq _r_img_x __r_img_x)
   (setq _r_img_y __r_img_y)
   (setq _r_img_z __r_img_z)
   (setq _g_img_x __g_img_x)
   (setq _g_img_y __g_img_y)
   (setq _g_img_z __g_img_z)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:r_size
   (&optional __r_size)
   (if __r_size (setq _r_size __r_size)) _r_size)
  (:b_size
   (&optional __b_size)
   (if __b_size (setq _b_size __b_size)) _b_size)
  (:g_size
   (&optional __g_size)
   (if __g_size (setq _g_size __g_size)) _g_size)
  (:b_img_x
   (&optional __b_img_x)
   (if __b_img_x (setq _b_img_x __b_img_x)) _b_img_x)
  (:b_img_y
   (&optional __b_img_y)
   (if __b_img_y (setq _b_img_y __b_img_y)) _b_img_y)
  (:b_img_z
   (&optional __b_img_z)
   (if __b_img_z (setq _b_img_z __b_img_z)) _b_img_z)
  (:r_img_x
   (&optional __r_img_x)
   (if __r_img_x (setq _r_img_x __r_img_x)) _r_img_x)
  (:r_img_y
   (&optional __r_img_y)
   (if __r_img_y (setq _r_img_y __r_img_y)) _r_img_y)
  (:r_img_z
   (&optional __r_img_z)
   (if __r_img_z (setq _r_img_z __r_img_z)) _r_img_z)
  (:g_img_x
   (&optional __g_img_x)
   (if __g_img_x (setq _g_img_x __g_img_x)) _g_img_x)
  (:g_img_y
   (&optional __g_img_y)
   (if __g_img_y (setq _g_img_y __g_img_y)) _g_img_y)
  (:g_img_z
   (&optional __g_img_z)
   (if __g_img_z (setq _g_img_z __g_img_z)) _g_img_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _r_size
    4
    ;; int32 _b_size
    4
    ;; int32 _g_size
    4
    ;; float32[] _b_img_x
    (* 4    (length _b_img_x)) 4
    ;; float32[] _b_img_y
    (* 4    (length _b_img_y)) 4
    ;; float32[] _b_img_z
    (* 4    (length _b_img_z)) 4
    ;; float32[] _r_img_x
    (* 4    (length _r_img_x)) 4
    ;; float32[] _r_img_y
    (* 4    (length _r_img_y)) 4
    ;; float32[] _r_img_z
    (* 4    (length _r_img_z)) 4
    ;; float32[] _g_img_x
    (* 4    (length _g_img_x)) 4
    ;; float32[] _g_img_y
    (* 4    (length _g_img_y)) 4
    ;; float32[] _g_img_z
    (* 4    (length _g_img_z)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _r_size
       (write-long _r_size s)
     ;; int32 _b_size
       (write-long _b_size s)
     ;; int32 _g_size
       (write-long _g_size s)
     ;; float32[] _b_img_x
     (write-long (length _b_img_x) s)
     (dotimes (i (length _b_img_x))
       (sys::poke (elt _b_img_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _b_img_y
     (write-long (length _b_img_y) s)
     (dotimes (i (length _b_img_y))
       (sys::poke (elt _b_img_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _b_img_z
     (write-long (length _b_img_z) s)
     (dotimes (i (length _b_img_z))
       (sys::poke (elt _b_img_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _r_img_x
     (write-long (length _r_img_x) s)
     (dotimes (i (length _r_img_x))
       (sys::poke (elt _r_img_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _r_img_y
     (write-long (length _r_img_y) s)
     (dotimes (i (length _r_img_y))
       (sys::poke (elt _r_img_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _r_img_z
     (write-long (length _r_img_z) s)
     (dotimes (i (length _r_img_z))
       (sys::poke (elt _r_img_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _g_img_x
     (write-long (length _g_img_x) s)
     (dotimes (i (length _g_img_x))
       (sys::poke (elt _g_img_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _g_img_y
     (write-long (length _g_img_y) s)
     (dotimes (i (length _g_img_y))
       (sys::poke (elt _g_img_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _g_img_z
     (write-long (length _g_img_z) s)
     (dotimes (i (length _g_img_z))
       (sys::poke (elt _g_img_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _r_size
     (setq _r_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b_size
     (setq _b_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _g_size
     (setq _g_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _b_img_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _b_img_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _b_img_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _b_img_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _b_img_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _b_img_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _b_img_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _b_img_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _b_img_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _r_img_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_img_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_img_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _r_img_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_img_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_img_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _r_img_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_img_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_img_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _g_img_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _g_img_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _g_img_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _g_img_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _g_img_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _g_img_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _g_img_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _g_img_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _g_img_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get core_msgs::ball_position :md5sum-) "aed016388a639bff17b1abc7071952eb")
(setf (get core_msgs::ball_position :datatype-) "core_msgs/ball_position")
(setf (get core_msgs::ball_position :definition-)
      "Header header
int32 r_size
int32 b_size
int32 g_size

float32[] b_img_x
float32[] b_img_y
float32[] b_img_z

float32[] r_img_x
float32[] r_img_y
float32[] r_img_z

float32[] g_img_x
float32[] g_img_y
float32[] g_img_z

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



(provide :core_msgs/ball_position "aed016388a639bff17b1abc7071952eb")


