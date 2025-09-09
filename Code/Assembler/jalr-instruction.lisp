(cl:in-package #:cluster-risc-v)

(defclass jalr-instruction (immediate-instruction)
  ((%offset :initarg :offset :reader offset)))

(defmethod initialize-instance :after
    ((instruction jalr-instruction) &key offset)
  (check-type offset (signed-byte 12)))

(defmethod opcode ((instruction jalr-instruction))
  com:+opcode-jalr+)

(defmethod func-3 ((instruction jalr-instruction))
  com:+func-3-jalr+)

(defmethod encode-instruction ((instruction jalr-instruction))
  (logior (ash (ldb (byte 12 0) (offset instruction)) 20)
          (ash (register-number (source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
