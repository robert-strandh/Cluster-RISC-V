(cl:in-package #:cluster-risc-v)

(defconstant +add-immediate-function-3+ #b000)

(defclass add-immediate-instruction
    (integer-register-non-shift-immediate-instruction)
  ()
  (:default-initargs :function-3 +add-immediate-function-3+))

