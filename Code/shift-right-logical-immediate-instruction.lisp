(cl:in-package #:cluster-risc-v)

(defconstant +shift-right-logical-immediate-function-3+ #b101)

(defclass shift-right-logical-immediate-instruction
    (shift-immediate-instruction)
  ()
  (:default-initargs :function-3 +shift-right-logical-immediate-function-3+))

