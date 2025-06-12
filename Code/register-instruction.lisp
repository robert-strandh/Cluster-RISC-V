(cl:in-package #:cluster-risc-v)

(defclass register-instruction (instruction)
  ((%function-7
    :initarg :function-7
    :reader function-7)
   (%source-register-1
    :initarg :source-register-1
    :reader source-register-1)
   (%source-register-2
    :initarg :source-register-2
    :reader source-register-2)
   (%function-3
    :initarg :function-3
    :reader function-3)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))

(defmethod initialize-instance :after
    ((instruction register-instruction)
     &key
       function-7
       function-3
       opcode)
  (check-type function-7 (unsigned-byte 7))
  (check-type function-3 (unsigned-byte 3))
  (check-type opcode (unsigned-byte 7)))
