(cl:in-package #:cluster-risc-v)

(defconstant +shift-right-arithmetic-immediate-function-6+ #b010000)

(defconstant +shift-right-arithmetic-immediate-function-3+ #b101)

(defclass shift-right-arithmetic-immediate-instruction
    (integer-register-shift-immediate-instruction)
  ()
  (:default-initargs
   :function-6 +shift-right-arithmetic-immediate-function-6+
   :function-3 +shift-right-arithmetic-immediate-function-3+))
