(cl:in-package #:cluster-risc-v)

(defclass sraw-instruction
    (integer-register-register-shift-right-arithmetic-instruction-mixin
     half-integer-register-register-instruction)
  ())
