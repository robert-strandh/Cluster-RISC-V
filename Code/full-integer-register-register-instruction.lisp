(cl:in-package #:cluster-risc-v)

(defconstant +full-integer-register-register-opcode+ #b0110011)

(defclass full-integer-register-register-instruction
    (integer-register-register-instruction)
  ()
  (:default-initargs :opcode +full-integer-register-register-opcode+))
