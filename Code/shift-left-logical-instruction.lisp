(cl:in-package #:cluster-risc-v)

(defconstant +shift-left-logical-function-7+ #b0000000)

(defconstant +shift-left-logical-function-3+ #b001)

(defclass shift-left-logical-instruction
    (integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +shift-left-logical-function-7+
   :function-3 +shift-left-logical-function-3+))
