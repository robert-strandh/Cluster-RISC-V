(cl:in-package #:cluster-risc-v)

(defclass half-integer-register-register-subtract-instruction
    (integer-register-register-subtract-instruction-mixin
     half-integer-register-register-instruction)
  ())
