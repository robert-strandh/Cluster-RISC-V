(cl:in-package #:cluster-risc-v)

(defclass srl-instruction
    (integer-register-register-srl-instruction-mixin
     full-integer-register-register-instruction)
  ())
