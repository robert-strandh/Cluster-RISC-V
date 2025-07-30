(cl:in-package #:cluster-risc-v)

(defclass subw-instruction
    (integer-register-register-subtract-instruction-mixin
     half-integer-register-register-instruction)
  ())
