(cl:in-package #:cluster-risc-v)

(defclass immediate-instruction (instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)
   (%source-register
    :initarg :source-register
    :reader source-register)
   (%function-3
    :initarg :function-3
    :reader function-3)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))

(defmethod initialize-instance :after
    ((instruction immediate-instruction)
     &key
       immediate-value
       function-3
       opcode)
  (check-type immediate-value (signed-byte 12))
  (check-type function-3 (unsigned-byte 3))
  (check-type opcode (unsigned-byte 7)))
