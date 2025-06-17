(cl:in-package #:cluster-risc-v)

(defconstant +shift-left-logical-immediate-function-6+ #b000000)

(defconstant +shift-left-logical-immediate-function-3+ #b001)

(defclass shift-left-logical-immediate-instruction
    (integer-register-shift-immediate-instruction)
  ()
  (:default-initargs
   :function-6 +shift-left-logical-immediate-function-6+
   :function-3 +shift-left-logical-immediate-function-3+))
