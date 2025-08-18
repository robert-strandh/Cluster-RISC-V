(cl:in-package #:cluster-risc-v)

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
    :reader offset)))

(defmethod initialize-instance :after
    ((instruction load-instruction)
     &key offset)
  (check-type offset (signed-byte 12)))

(defmethod opcode ((instruction load-instruction))
  com:+opcode-load+)

(defun integer-log (n)
  (integer-length (1- n)))

(defmethod encode-instruction ((instruction load-instruction))
  (logior (ash (logand (offset instruction) #b111111111111) 20)
          (ash (register-number (source-register instruction)) 15)
          (ash (width instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
