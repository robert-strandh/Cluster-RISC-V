(cl:in-package #:cluster-risc-v-assembler)

(defmethod opcode ((instruction ins:branch-instruction))
  com:+opcode-branch+)

(defmethod func-3 ((instruction ins:beq-instruction))
  com:+func-3-beq+)

(defmethod func-3 ((instruction ins:bne-instruction))
  com:+func-3-bne+)

(defmethod func-3 ((instructino ins:blt-instruction))
  com:+func-3-blt+)

(defmethod func-3 ((instruction ins:bge-instruction))
  com:+func-3-bge+)

(defmethod func-3 ((instruction ins:bltu-instruction))
  com:+func-3-bltu+)

(defmethod func-3 ((instruction ins:bgeu-instruction))
  com:+func-3-bgeu+)
