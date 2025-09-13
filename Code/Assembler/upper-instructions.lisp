(cl:in-package #:cluster-risc-v)

(defmethod encode-instruction ((instruction ins:upper-instruction))
  (logior (ins:immediate-value instruction)
          (ash (ins:register-number (ins:destination-register instruction)) 7)
          (opcode instruction)))

(defmethod opcode ((instruction ins:lui-instruction))
  com:+opcode-lui+)

(defmethod opcode ((instruction ins:auipc-instruction))
  com:+opcode-auipc+)
