(cl:in-package #:cluster-risc-v)

(defconstant +shift-right-logical-function-7+ #b0000000)

(defconstant +shift-right-logical-function-3+ #b101)

(defclass shift-right-logical-instruction
    (full-integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +shift-right-logical-function-7+
   :function-3 +shift-right-logical-function-3+))
