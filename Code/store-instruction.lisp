(cl:in-package #:cluster-risc-v)

(defconstant +opcode-store+  #b0100011)

(defclass store-instruction (instruction)
  ((%source-register-1
    :initarg :source-register-1
    :reader source-register-1)
   (%source-register-2
    :initarg :source-register-2
    :reader source-register-2)
   (%offset
    :initarg :offset
    :reader offset))
  (:default-initargs :opcode +opcode-store+))

(defmethod initialize-instance :after
    ((instruction store-instruction)
     &key offset)
  (check-type offset (signed-byte 12)))
