(cl:in-package #:cluster-risc-v)

(defclass integer-register-register-double-instruction
    (integer-register-register-instruction)
  ())

(defmethod opcode
    ((instruction integer-register-register-double-instruction))
  com:+opcode-integer-register-register-double+)
