(cl:in-package #:cluster-risc-v)

(defclass shift-right-arithmetic-instruction
    (integer-register-register-shift-right-arithmetic-instruction-mixin
     full-integer-register-register-instruction)
  ())
