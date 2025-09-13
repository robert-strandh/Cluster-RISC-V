(cl:in-package #:cluster-risc-v-assembler)

(defmethod opcode
    ((instruction ins:integer-register-immediate-word-instruction))
  com:+opcode-immediate-word+)

(defmethod func-3 ((instruction ins:addiw-instruction))
  com:+func-3-addiw+)

(defmethod encode-instruction
    ((instruction ins:shift-immediate-word-instruction))
  (logior (ash (func-7 instruction) 26)
          (ash (ins:shift-amount instruction) 20)
          (ash (ins:register-number (ins:source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (ins:register-number (ins:destination-register instruction)) 7)
          (opcode instruction)))

(defmethod func-3 ((instruction ins:slliw-instruction))
  com:+func-3-slliw+)

(defmethod func-7 ((instruction ins:slliw-instruction))
  com:+func-7-slliw+)

(defmethod func-3 ((instruction ins:srliw-instruction))
  com:+func-3-srliw+)

(defmethod func-7 ((instruction ins:srliw-instruction))
  com:+func-7-srliw+)

(defmethod func-3 ((instruction ins:sraiw-instruction))
  com:+func-3-sraiw+)

(defmethod func-7 ((instruction ins:sraiw-instruction))
  com:+func-7-sraiw+)
