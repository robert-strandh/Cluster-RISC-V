(cl:in-package #:cluster-risc-v)

(defclass upper-instruction (instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))

(defmethod initialize-instance :after
    ((instruction upper-instruction)
     &key immediate-value)
  (check-type immediate-value (signed-byte 20)))
