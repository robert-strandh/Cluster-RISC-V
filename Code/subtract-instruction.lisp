(cl:in-package #:cluster-risc-v)

(defclass subtract-instruction
    (integer-subtract-instruction-mixin
     full-integer-register-register-instruction)
  ())
