(cl:in-package #:cluster-risc-v)

(defconstant +and-function-7+ #b0000000)

(defconstant +and-function-3+ #b111)

(defclass and-instruction (full-integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +and-function-7+
   :function-3 +and-function-3+))
