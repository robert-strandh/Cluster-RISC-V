(cl:in-package #:cluster-risc-v)

(defconstant +set-less-than-immediate-function-3+ #b010)

(defclass set-less-than-immediate-instruction
    (integer-register-immediate-instruction)
  ()
  (:default-initargs :function-3 +set-less-than-immediate-function-3+))

