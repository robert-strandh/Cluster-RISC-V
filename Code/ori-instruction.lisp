(cl:in-package #:cluster-risc-v)

(defconstant +ori-function-3+ #b110)

(defclass ori-instruction
    (integer-register-non-shift-immediate-instruction)
  ()
  (:default-initargs :function-3 +ori-function-3+))
