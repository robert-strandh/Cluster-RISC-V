(cl:in-package #:cluster-risc-v)

(defclass half-integer-register-register-set-less-than-instruction
    (integer-register-register-set-less-than-unsigned-instruction-mixin
     half-integer-register-register-instruction)
  ())
