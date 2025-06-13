(cl:in-package #:cluster-risc-v)

(defconstant +set-less-than-unsigned-function-7+ #b0000000)

(defconstant +set-less-than-unsigned-function-3+ #b011)

(defclass set-less-than-unsigned-instruction
    (integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +set-less-than-unsigned-function-7+
   :function-3 +set-less-than-unsigned-function-3+))
