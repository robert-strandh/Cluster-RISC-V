(cl:in-package #:cluster-risc-v)

(defconstant +opcode-load+  #b0000011)

(defclass load-instruction (instruction)
  ((%source-register
    :initarg :source-register
    :reader source-register)
   (%width
    :initarg :width
    :reader width)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)
   (%offset
    :initarg :offset
    :reader offset))
  (:default-initargs :opcode +opcode-load+))

(defmethod initialize-instance :after
    ((instruction load-instruction)
     &key width)
  (check-type width (unsigned-byte 3)))

(defun integer-log (n)
  (integer-length (1- n)))
