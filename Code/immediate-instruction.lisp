(cl:in-package #:cluster-risc-v)

(defclass immediate-instruction (instruction)
  ((%source-register
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
     &key function-3)
  (check-type function-3 (unsigned-byte 3)))
