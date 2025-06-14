(cl:in-package #:cluster-risc-v)

(defconstant +and-immediate-function-3+ #b111)

(defclass and-immediate-instruction (integer-register-immediate-instruction)
  ()
  (:default-initargs :function-3 +and-immediate-function-3+))

