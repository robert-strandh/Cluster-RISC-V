(cl:in-package #:cluster-risc-v)

(defconstant +shift-right-logical-immediate-function-6+ #b000000)

(defconstant +shift-right-logical-immediate-function-3+ #b101)

(defclass shift-right-logical-immediate-instruction
    (integer-register-shift-immediate-instruction)
  ()
  (:default-initargs
   :function-6 +shift-right-logical-immediate-function-6+
   :function-3 +shift-right-logical-immediate-function-3+))

