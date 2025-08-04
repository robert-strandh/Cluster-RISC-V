(cl:in-package #:cluster-risc-v)

(defclass sltu-instruction
    (integer-register-register-set-less-than-unsigned-instruction-mixin
     full-integer-register-register-instruction)
  ())
