(cl:in-package #:cluster-risc-v)

(defconstant +andi-function-3+ #b111)

(defclass andi-instruction
    (integer-register-non-shift-immediate-instruction)
  ()
  (:default-initargs :function-3 +andi-function-3+))

