(cl:in-package #:cluster-risc-v)

(defconstant +opcode-register+ #b0110011)

(defclass integer-register-register-instruction (register-instruction)
  ()
  (:default-initargs :opcode +opcode-register+))
