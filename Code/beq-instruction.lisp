(cl:in-package #:cluster-risc-v)

(defconstant +beq-function-3+ #b000)

(defclass beq-instruction (branch-instruction)
  ()
  (:default-initargs :function-3 +beq-function-3+))
