(cl:in-package #:cluster-risc-v)

(defconstant +opcode-lod-+  #b0000011)

(defclass load-instruction (instruction)
  ((%source-register
    :initarg :source-register
    :reader source-register)
   (%width
    :initarg :width
    :reader width)
   (%destination-register
    :initarg :destination-register
    :reader destination-register))
  (:default-initargs :opcode +opcoad-load+))

(defmethod initialize-instance :after
    ((instruction immediate-instruction)
     &key width)
  (check-type width (unsigned-byte 3)))

(defun integer-log (n)
  (integer-length (1- n)))
