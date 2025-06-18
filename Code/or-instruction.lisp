(cl:in-package #:cluster-risc-v)

(defconstant +or-function-7+ #b0000000)

(defconstant +or-function-3+ #b110)

(defclass or-instruction (full-integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +or-function-7+
   :function-3 +or-function-3+))
