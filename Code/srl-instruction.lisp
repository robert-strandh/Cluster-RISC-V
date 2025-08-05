(cl:in-package #:cluster-risc-v)

(defclass srl-instruction
    (srl-instruction-mixin
     full-integer-register-register-instruction)
  ())
