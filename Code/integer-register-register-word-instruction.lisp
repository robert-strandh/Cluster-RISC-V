(cl:in-package #:cluster-risc-v)

(defclass integer-register-register-word-instruction
    (integer-register-register-instruction)
  ())

(defmethod opcode
    ((instruction integer-register-register-word-instruction))
  com:+opcode-integer-register-register-word+)
