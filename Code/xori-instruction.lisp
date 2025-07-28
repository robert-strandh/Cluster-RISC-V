(cl:in-package #:cluster-risc-v)

(defconstant +xor-immediate-function-3+ #b100)

(defclass xor-immediate-instruction
    (integer-register-non-shift-immediate-instruction)
  ()
  (:default-initargs :function-3 +xor-immediate-function-3+))
