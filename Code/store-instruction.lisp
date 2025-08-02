(cl:in-package #:cluster-risc-v)

(defconstant +opcode-store-+  #b0100011)

(defclass store-instruction (instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)
   (%source-register-1
    :initarg :source-register-1
    :reader source-register-1)
   (%source-register-2
    :initarg :source-register-2
    :reader source-register-2)
   (%width
    :initarg :width
    :reader width))
  (:default-initargs :opcode +opcoad-store+))

(defmethod initialize-instance :after
    ((instruction store-instruction)
     &key width)
  (check-type immediate-value (signed-byte 12))
  (check-type width (unsigned-byte 3)))
