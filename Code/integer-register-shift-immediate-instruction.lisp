(cl:in-package #:cluster-risc-v)

(defclass integer-register-shift-immediate-instruction
    (integer-register-immediate-instruction)
  ((%shift-amount :initarg :shift-amount :reader shift-amount)
   (%function-6 :initarg :function-6 :reader function-6)))

(defmethod initialize-instance :after
    ((instruction integer-register-shift-immediate-instruction)
     &key shift-amount)
  (check-type shift-amount (unsigned-byte 6)))
