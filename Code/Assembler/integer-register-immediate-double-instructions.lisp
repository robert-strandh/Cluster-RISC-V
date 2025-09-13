(cl:in-package #:cluster-risc-v)

(defmethod opcode
    ((instruction ins:integer-register-immediate-double-instruction))
  com:+opcode-immediate-double+)

(defmethod encode-instruction
    ((instruction ins:non-shift-immediate-double-instruction))
  (logior (ash (ins:immediate-value instruction) 20)
          (ash (ins:register-number (ins:source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (ins:register-number (ins:destination-register instruction)) 7)
          (opcode instruction)))

(defmethod func-3 ((instruction insaddi-instruction))
  com:+func-3-addi+)

(defmethod func-3 ((instruction ins:slti-instruction))
  com:+func-3-slti+)

(defmethod func-3 ((instruction ins:sltiu-instruction))
  com:+func-3-sltiu+)

(defmethod func-3 ((instruction ins:andi-instruction))
  com:+func-3-andi+)

(defmethod func-3 ((instruction ins:ori-instruction))
  com:+func-3-ori+)

(defmethod func-3 ((instruction ins:xori-instruction))
  com:+func-3-xori+)

(defmethod encode-instruction
    ((instruction ins:shift-immediate-double-instruction))
  (logior (ash (func-7 instruction) 26)
          (ash (ins:shift-amount instruction) 20)
          (ash (ins:register-number (ins:source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (ins:register-number (ins:destination-register instruction)) 7)
          (opcode instruction)))

(defmethod func-3 ((instruction ins:slli-instruction))
  com:+func-3-slli+)

(defmethod func-7 ((instruction ins:slli-instruction))
  com:+func-7-slli+)

(defmethod func-3 ((instruction ins:srli-instruction))
  com:+func-3-srli+)

(defmethod func-7 ((instruction ins:srli-instruction))
  com:+func-7-srli+)

(defmethod func-3 ((instruction ins:srai-instruction))
  com:+func-3-srai+)

(defmethod func-7 ((instruction ins:srai-instruction))
  com:+func-7-srai+)
