(cl:in-package #:cluster-risc-v)

(defconstant +sltu-function-7+ #b0000000)

(defconstant +sltu-function-3+ #b011)

(defclass sltu-instruction
    (full-integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +sltu-function-7+
   :function-3 +sltu-function-3+))
