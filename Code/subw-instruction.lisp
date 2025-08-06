(cl:in-package #:cluster-risc-v)

(defclass subw-instruction
    (sub-instruction-mixin
     half-integer-register-register-instruction)
  ())
