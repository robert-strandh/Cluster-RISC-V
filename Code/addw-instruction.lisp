(cl:in-package #:cluster-risc-v)

(defclass addw-instruction
    (add-instruction-mixin
     half-integer-register-register-instruction)
  ())
