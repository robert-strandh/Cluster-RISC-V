(cl:in-package #:cluster-risc-v)

(defconstant +shift-left-logical-function-7+ #b0000000)

(defconstant +shift-left-logical-function-3+ #b001)

(defclass shift-left-logical-instruction
    (integer-register-register-shift-left-logical-instruction-mixin
     full-integer-register-register-instruction)
  ())
