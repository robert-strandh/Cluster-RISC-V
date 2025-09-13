(cl:in-package #:cluster-risc-v-assembler)

(defmethod opcode ((instruction ins:jal-instruction))
  com:+opcode-jal+)

(defmethod encode-instruction ((instruction ins:jal-instruction))
  (let ((offset (ins:offset instruction)))
    (logior (ash (ldb (byte 1 20) offset) 31)
            (ash (ldb (byte 10 10) offset) 21)
            (ash (ldb (byte 1 11) offset) 20)
            (ash (ldb (byte 8 19) offset) 12)
            (ash (ins:register-number (ins:destination-register instruction)) 7)
            (opcode instruction))))

(defmethod opcode ((instruction ins:jalr-instruction))
  com:+opcode-jalr+)

(defmethod func-3 ((instruction ins:jalr-instruction))
  com:+func-3-jalr+)

(defmethod encode-instruction ((instruction ins:jalr-instruction))
  (logior (ash (ldb (byte 12 0) (ins:offset instruction)) 20)
          (ash (ins:register-number (ins:source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (ins:register-number (ins:destination-register instruction)) 7)
          (opcode instruction)))
