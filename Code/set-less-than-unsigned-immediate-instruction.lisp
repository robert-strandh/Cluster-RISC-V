(cl:in-package #:cluster-risc-v)

(defconstant +set-less-than-unsigned-immediate-function-3+ #b011)

(defclass set-less-than-unsigned-immediate-instruction
    (integer-register-non-shift-immediate-instruction)
  ()
  (:default-initargs
   :function-3 +set-less-than-unsigned-immediate-function-3+))

