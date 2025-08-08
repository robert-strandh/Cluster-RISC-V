(cl:in-package #:cluster-risc-v)

(defclass sub-instruction
    (sub-instruction-mixin
     full-integer-register-register-instruction)
  ())
