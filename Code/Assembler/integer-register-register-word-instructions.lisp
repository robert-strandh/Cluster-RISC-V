(cl:in-package #:cluster-risc-v)

(defmethod opcode
    ((instruction ins:integer-register-register-word-instruction))
  com:+opcode-integer-register-register-word+)

(defmethod func-7 ((instruction ins:addw-instruction))
  com:+func-7-addw+)

(defmethod func-3 ((instruction ins:addw-instruction))
  com:+func-3-addw+)

(defmethod func-7 ((instruction ins:subw-instruction))
  com:+func-7-subw+)

(defmethod func-3 ((instruction ins:subw-instruction))
  com:+func-3-subw+)

(defmethod func-7 ((instruction ins:sllw-instruction))
  com:+func-7-sllw+)

(defmethod func-3 ((instruction ins:sllw-instruction))
  com:+func-3-sllw+)

(defmethod func-7 ((instruction ins:srlw-instruction))
  com:+func-7-srlw+)

(defmethod func-3 ((instruction ins:srlw-instruction))
  com:+func-3-srlw+)

(defmethod func-7 ((instruction ins:sraw-instruction))
  com:+func-7-sraw+)

(defmethod func-3 ((instruction ins:sraw-instruction))
  com:+func-3-sraw+)
