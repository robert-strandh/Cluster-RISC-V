(cl:in-package #:cluster-risc-v)

(defclass integer-register-immediate-double-instruction
    (integer-register-immediate-instruction)
  ())

(defmethod opcode
    ((instruction integer-register-immediate-double-instruction))
  com:+opcode-immediate-double+)
