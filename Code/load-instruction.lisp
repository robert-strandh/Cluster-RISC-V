(cl:in-package #:cluster-risc-v)

(defconstant +opcode-load+  #b0000011)

(defgeneric width (instruction))

(defclass load-instruction (instruction)
  ((%source-register
    :initarg :source-register
    :reader source-register)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)
   (%offset
    :initarg :offset
    :reader offset))
  (:default-initargs :opcode +opcode-load+))

(defmethod initialize-instance :after
    ((instruction load-instruction)
     &key width offset)
  (check-type offset (signed-byte 12))
  (check-type width (unsigned-byte 3)))

(defun integer-log (n)
  (integer-length (1- n)))

(defmethod encode-instruction ((instruction load-instruction))
  (logior (ash (logand (offset instruction) #b111111111111) 20)
          (ash (register-number (source-register instruction)) 15)
          (ash (width instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
