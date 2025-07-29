(cl:in-package #:cluster-risc-v)

(defclass srlw-instruction
    (integer-register-register-shift-right-logical-instruction-mixin
     half-integer-register-register-instruction)
  ())
