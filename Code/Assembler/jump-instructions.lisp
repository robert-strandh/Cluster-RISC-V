(cl:in-package #:cluster-risc-v-assembler)

(defmethod opcode ((instruction jal-instruction))
  com:+opcode-jal+)

(defmethod encode-instruction ((instruction jal-instruction))
  (let ((offset (offset instruction)))
    (logior (ash (ldb (byte 1 20) offset) 31)
            (ash (ldb (byte 10 10) offset) 21)
            (ash (ldb (byte 1 11) offset) 20)
            (ash (ldb (byte 8 19) offset) 12)
            (ash (register-number (destination-register instruction)) 7)
            (opcode instruction))))

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
