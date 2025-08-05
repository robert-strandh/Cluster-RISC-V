(cl:in-package #:cluster-risc-v)

(defclass srlw-instruction
    (srl-instruction-mixin
     half-integer-register-register-instruction)
  ())
