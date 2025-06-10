(cl:in-package #:cluster-risc-v)

(defclass instruction () ())

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
    :reader destination-register)
   (%opcode
    :initarg :opcode
    :reader opcode)))

