(cl:in-package #:cluster-risc-v)

(defclass integer-register-immediate-word-instruction
    (integer-register-immediate-instruction)
  ())

(defmethod opcode
    ((instruction integer-register-immediate-word-instruction))
  com:+opcode-immediate-word+)
