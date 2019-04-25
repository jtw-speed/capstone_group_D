
(cl:in-package :asdf)

(defsystem "test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ball_position" :depends-on ("_package_ball_position"))
    (:file "_package_ball_position" :depends-on ("_package"))
  ))