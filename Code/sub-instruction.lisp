(cl:in-package #:cluster-risc-v)

(defclass subtract-instruction
    (integer-register-register-subtract-instruction-mixin
     full-integer-register-register-instruction)
  ())
