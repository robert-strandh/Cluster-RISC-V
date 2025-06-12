(cl:in-package #:cluster-risc-v)

(defconstant +opcode-immediate+ #b0010011)

(defclass integer-register-immediate-instruction (immediate-instruction)
  ()
  (:default-initargs :opcode +opcode-immediate+))
