(cl:in-package #:cluster-risc-v-assembler)

(defmethod opcode
    ((instruction ins:integer-register-register-double-instruction))
  com:+opcode-integer-register-register-double+)

(defmethod func-7 ((instruction ins:add-instruction))
  com:+func-7-add+)

(defmethod func-3 ((instruction ins:add-instruction))
  com:+func-3-add+)

(defmethod func-7 ((instruction ins:sub-instruction))
  com:+func-7-sub+)

(defmethod func-3 ((instruction ins:sub-instruction))
  com:+func-3-sub+)

(defmethod func-7 ((instruction ins:sll-instruction))
  com:+func-7-sll+)

(defmethod func-3 ((instruction ins:sll-instruction))
  com:+func-3-sll+)

(defmethod func-7 ((instruction ins:srl-instruction))
  com:+func-7-srl+)

(defmethod func-3 ((instruction ins:srl-instruction))
  com:+func-3-srl+)

(defmethod func-7 ((instruction ins:sra-instruction))
  com:+func-7-sra+)

(defmethod func-3 ((instruction ins:sra-instruction))
  com:+func-3-sra+)

(defmethod func-7 ((instruction ins:slt-instruction))
  com:+func-7-slt+)

(defmethod func-3 ((instruction ins:slt-instruction))
  com:+func-3-slt+)

(defmethod func-7 ((instruction ins:sltu-instruction))
  com:+func-7-sltu+)

(defmethod func-3 ((instruction ins:sltu-instruction))
  com:+func-3-sltu+)

(defmethod func-7 ((instruction ins:and-instruction))
  com:+func-7-and+)

(defmethod func-3 ((instruction ins:and-instruction))
  com:+func-3-and+)

(defmethod func-7 ((instruction ins:or-instruction))
  com:+func-7-or+)

(defmethod func-3 ((instruction ins:or-instruction))
  com:+func-3-or+)

(defmethod func-7 ((instruction ins:xor-instruction))
  com:+func-7-xor+)

(defmethod func-3 ((instruction ins:xor-instruction))
  com:+func-3-xor+)
