(cl:in-package #:cluster-risc-v)

(defconstant +xor-function-7+ #b0000000)

(defconstant +xor-function-3+ #b100)

(defclass xor-instruction (integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +xor-function-7+
   :function-3 +xor-function-3+))
