(cl:in-package #:cluster-risc-v)

(defclass sllw-instruction
    (integer-register-register-shift-left-logical-instruction-mixin
     half-integer-register-register-instruction)
  ())
