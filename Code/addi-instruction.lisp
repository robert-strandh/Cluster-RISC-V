(cl:in-package #:cluster-risc-v)

(defconstant +addi-function-3+ #b000)

(defclass addi-instruction
    (integer-register-non-shift-immediate-instruction)
  ()
  (:default-initargs :function-3 +addi-function-3+))
