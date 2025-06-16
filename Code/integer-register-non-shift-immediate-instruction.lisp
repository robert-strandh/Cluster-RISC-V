(cl:in-package #:cluster-risc-v)

(defclass integer-register-non-shift-immediate-instruction
    (integer-register-immediate-instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)))

(defmethod initialize-instance :after
    ((instruction integer-register-non-shift-immediate-instruction)
     &key
       immediate-value)
  (check-type immediate-value (signed-byte 12)))

