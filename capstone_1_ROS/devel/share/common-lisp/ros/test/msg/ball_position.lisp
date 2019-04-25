; Auto-generated. Do not edit!


(cl:in-package test-msg)


;//! \htmlinclude ball_position.msg.html

(cl:defclass <ball_position> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (size1
    :reader size1
    :initarg :size1
    :type cl:integer
    :initform 0)
   (img_x1
    :reader img_x1
    :initarg :img_x1
    :type cl:float
    :initform 0.0)
   (img_y1
    :reader img_y1
    :initarg :img_y1
    :type cl:float
    :initform 0.0)
   (distance1
    :reader distance1
    :initarg :distance1
    :type cl:float
    :initform 0.0)
   (size2
    :reader size2
    :initarg :size2
    :type cl:integer
    :initform 0)
   (img_x2
    :reader img_x2
    :initarg :img_x2
    :type cl:float
    :initform 0.0)
   (img_y2
    :reader img_y2
    :initarg :img_y2
    :type cl:float
    :initform 0.0)
   (distance2
    :reader distance2
    :initarg :distance2
    :type cl:float
    :initform 0.0)
   (size3
    :reader size3
    :initarg :size3
    :type cl:integer
    :initform 0)
   (img_x3
    :reader img_x3
    :initarg :img_x3
    :type cl:float
    :initform 0.0)
   (img_y3
    :reader img_y3
    :initarg :img_y3
    :type cl:float
    :initform 0.0)
   (distance3
    :reader distance3
    :initarg :distance3
    :type cl:float
    :initform 0.0)
   (size4
    :reader size4
    :initarg :size4
    :type cl:integer
    :initform 0)
   (img_x4
    :reader img_x4
    :initarg :img_x4
    :type cl:float
    :initform 0.0)
   (img_y4
    :reader img_y4
    :initarg :img_y4
    :type cl:float
    :initform 0.0)
   (midpoint
    :reader midpoint
    :initarg :midpoint
    :type cl:float
    :initform 0.0)
   (distance4
    :reader distance4
    :initarg :distance4
    :type cl:float
    :initform 0.0))
)

(cl:defclass ball_position (<ball_position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ball_position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ball_position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test-msg:<ball_position> is deprecated: use test-msg:ball_position instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:header-val is deprecated.  Use test-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'size1-val :lambda-list '(m))
(cl:defmethod size1-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:size1-val is deprecated.  Use test-msg:size1 instead.")
  (size1 m))

(cl:ensure-generic-function 'img_x1-val :lambda-list '(m))
(cl:defmethod img_x1-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:img_x1-val is deprecated.  Use test-msg:img_x1 instead.")
  (img_x1 m))

(cl:ensure-generic-function 'img_y1-val :lambda-list '(m))
(cl:defmethod img_y1-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:img_y1-val is deprecated.  Use test-msg:img_y1 instead.")
  (img_y1 m))

(cl:ensure-generic-function 'distance1-val :lambda-list '(m))
(cl:defmethod distance1-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:distance1-val is deprecated.  Use test-msg:distance1 instead.")
  (distance1 m))

(cl:ensure-generic-function 'size2-val :lambda-list '(m))
(cl:defmethod size2-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:size2-val is deprecated.  Use test-msg:size2 instead.")
  (size2 m))

(cl:ensure-generic-function 'img_x2-val :lambda-list '(m))
(cl:defmethod img_x2-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:img_x2-val is deprecated.  Use test-msg:img_x2 instead.")
  (img_x2 m))

(cl:ensure-generic-function 'img_y2-val :lambda-list '(m))
(cl:defmethod img_y2-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:img_y2-val is deprecated.  Use test-msg:img_y2 instead.")
  (img_y2 m))

(cl:ensure-generic-function 'distance2-val :lambda-list '(m))
(cl:defmethod distance2-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:distance2-val is deprecated.  Use test-msg:distance2 instead.")
  (distance2 m))

(cl:ensure-generic-function 'size3-val :lambda-list '(m))
(cl:defmethod size3-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:size3-val is deprecated.  Use test-msg:size3 instead.")
  (size3 m))

(cl:ensure-generic-function 'img_x3-val :lambda-list '(m))
(cl:defmethod img_x3-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:img_x3-val is deprecated.  Use test-msg:img_x3 instead.")
  (img_x3 m))

(cl:ensure-generic-function 'img_y3-val :lambda-list '(m))
(cl:defmethod img_y3-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:img_y3-val is deprecated.  Use test-msg:img_y3 instead.")
  (img_y3 m))

(cl:ensure-generic-function 'distance3-val :lambda-list '(m))
(cl:defmethod distance3-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:distance3-val is deprecated.  Use test-msg:distance3 instead.")
  (distance3 m))

(cl:ensure-generic-function 'size4-val :lambda-list '(m))
(cl:defmethod size4-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:size4-val is deprecated.  Use test-msg:size4 instead.")
  (size4 m))

(cl:ensure-generic-function 'img_x4-val :lambda-list '(m))
(cl:defmethod img_x4-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:img_x4-val is deprecated.  Use test-msg:img_x4 instead.")
  (img_x4 m))

(cl:ensure-generic-function 'img_y4-val :lambda-list '(m))
(cl:defmethod img_y4-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:img_y4-val is deprecated.  Use test-msg:img_y4 instead.")
  (img_y4 m))

(cl:ensure-generic-function 'midpoint-val :lambda-list '(m))
(cl:defmethod midpoint-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:midpoint-val is deprecated.  Use test-msg:midpoint instead.")
  (midpoint m))

(cl:ensure-generic-function 'distance4-val :lambda-list '(m))
(cl:defmethod distance4-val ((m <ball_position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test-msg:distance4-val is deprecated.  Use test-msg:distance4 instead.")
  (distance4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ball_position>) ostream)
  "Serializes a message object of type '<ball_position>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'size1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'img_x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'img_y1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'size2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'img_x2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'img_y2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'size3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'img_x3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'img_y3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'size4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'img_x4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'img_y4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'midpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ball_position>) istream)
  "Deserializes a message object of type '<ball_position>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'img_x1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'img_y1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'img_x2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'img_y2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'img_x3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'img_y3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'img_x4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'img_y4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'midpoint) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance4) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ball_position>)))
  "Returns string type for a message object of type '<ball_position>"
  "test/ball_position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ball_position)))
  "Returns string type for a message object of type 'ball_position"
  "test/ball_position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ball_position>)))
  "Returns md5sum for a message object of type '<ball_position>"
  "7ed3388ded1c7beb3973353beb402376")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ball_position)))
  "Returns md5sum for a message object of type 'ball_position"
  "7ed3388ded1c7beb3973353beb402376")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ball_position>)))
  "Returns full string definition for message of type '<ball_position>"
  (cl:format cl:nil "Header header~%~%~%~%~%int32 size1~%float32 img_x1~%float32 img_y1~%float32 distance1~%~%~%~%~%int32 size2~%float32 img_x2~%float32 img_y2~%float32 distance2~%~%~%~%int32 size3~%float32 img_x3~%float32 img_y3~%float32 distance3~%~%~%~%int32 size4~%float32 img_x4~%float32 img_y4~%float32 midpoint~%float32 distance4~%~%~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ball_position)))
  "Returns full string definition for message of type 'ball_position"
  (cl:format cl:nil "Header header~%~%~%~%~%int32 size1~%float32 img_x1~%float32 img_y1~%float32 distance1~%~%~%~%~%int32 size2~%float32 img_x2~%float32 img_y2~%float32 distance2~%~%~%~%int32 size3~%float32 img_x3~%float32 img_y3~%float32 distance3~%~%~%~%int32 size4~%float32 img_x4~%float32 img_y4~%float32 midpoint~%float32 distance4~%~%~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ball_position>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ball_position>))
  "Converts a ROS message object to a list"
  (cl:list 'ball_position
    (cl:cons ':header (header msg))
    (cl:cons ':size1 (size1 msg))
    (cl:cons ':img_x1 (img_x1 msg))
    (cl:cons ':img_y1 (img_y1 msg))
    (cl:cons ':distance1 (distance1 msg))
    (cl:cons ':size2 (size2 msg))
    (cl:cons ':img_x2 (img_x2 msg))
    (cl:cons ':img_y2 (img_y2 msg))
    (cl:cons ':distance2 (distance2 msg))
    (cl:cons ':size3 (size3 msg))
    (cl:cons ':img_x3 (img_x3 msg))
    (cl:cons ':img_y3 (img_y3 msg))
    (cl:cons ':distance3 (distance3 msg))
    (cl:cons ':size4 (size4 msg))
    (cl:cons ':img_x4 (img_x4 msg))
    (cl:cons ':img_y4 (img_y4 msg))
    (cl:cons ':midpoint (midpoint msg))
    (cl:cons ':distance4 (distance4 msg))
))
