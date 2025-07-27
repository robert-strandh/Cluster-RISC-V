(cl:in-package #:cluster-risc-v)

(defconstant +or-immediate-function-3+ #b110)

(defclass or-immediate-instruction
    (integer-register-non-shift-immediate-instruction)
  ()
  (:default-initargs :function-3 +or-immediate-function-3+))

