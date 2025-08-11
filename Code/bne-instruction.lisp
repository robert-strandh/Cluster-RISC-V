(cl:in-package #:cluster-risc-v)

(defconstant +bne-function-3+ #b001)

(defclass bne-instruction (branch-instruction)
  ()
  (:default-initargs :function-3 +bne-function-3+))
