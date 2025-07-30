(cl:in-package #:cluster-risc-v)

(defclass addw-instruction
    (integer-register-register-add-instruction-mixin
     half-integer-register-register-instruction)
  ())
