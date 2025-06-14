(cl:in-package #:cluster-risc-v)

(defconstant +shift-left-logical-immediate-function-3+ #b111)

(defclass shift-left-logical-immediate-instruction
    (integer-register-immediate-instruction)
  ()
  (:default-initargs :function-3 +shift-left-logical-immediate-function-3+))

