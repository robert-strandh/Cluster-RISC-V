(cl:in-package #:cluster-risc-v-assembler)

(defmethod opcode ((instruction ins:store-instruction))
  com:+opcode-store+)

(defmethod width ((instruction ins:sd-instruction))
  #.(integer-log 8))

(defmethod width ((instruction ins:sw-instruction))
  #.(integer-log 4))

(defmethod width ((instruction ins:sh-instruction))
  #.(integer-log 2))

(defmethod width ((instruction ins:sb-instruction))
  #.(integer-log 1))
