(cl:in-package #:cluster-risc-v)

(defconstant +opcode-branch+ #b1100011)

(defclass branch-instruction (instruction)
  ((%target
    :initarg :target
    :reader target)
   (%source-register-1
    :initarg :source-register-1
    :reader source-register-1)
   (%source-register-2
    :initarg :source-register-2
    :reader source-register-2)
   (%function-3
    :initarg :function-3
    :reader function-3)))

(defmethod initialize-instance :after
    ((instruction branch-instruction)
     &key
       function-3)
  (check-type function-3 (unsigned-byte 3)))
