(cl:in-package #:cluster-risc-v)

(defclass shift-immediate-instruction
    (integer-register-immediate-instruction)
  ((%shift-amount :initarg :shift-amount :reader shift-amount)))

(defmethod initialize-instance :after
    ((instruction shift-immediate-instruction)
     &key shift-amount)
  (check-type shift-amount (unsigned-byte 6)))
