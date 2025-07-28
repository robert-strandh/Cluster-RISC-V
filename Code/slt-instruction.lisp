(cl:in-package #:cluster-risc-v)

(defconstant +set-less-than-function-7+ #b0000000)

(defconstant +set-less-than-function-3+ #b010)

(defclass set-less-than-instruction
    (integer-register-register-set-less-than-instruction-mixin
     full-integer-register-register-instruction)
  ())
