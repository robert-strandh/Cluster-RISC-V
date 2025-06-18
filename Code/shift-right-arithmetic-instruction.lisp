(cl:in-package #:cluster-risc-v)

(defconstant +shift-right-arithmetic-function-7+ #b0100000)

(defconstant +shift-right-arithmetic-function-3+ #b101)

(defclass shift-right-arithmetic-instruction
    (full-integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +shift-right-arithmetic-function-7+
   :function-3 +shift-right-arithmetic-function-3+))
