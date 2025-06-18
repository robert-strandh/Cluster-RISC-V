(cl:in-package #:cluster-risc-v)

(defconstant +half-integer-register-register-opcode+ #b0111011)

(defclass half-integer-register-register-instruction
    (integer-register-register-instruction)
  ()
  (:default-initargs :opcode +half-integer-register-register-opcode+))
