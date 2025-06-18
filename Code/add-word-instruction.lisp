(cl:in-package #:cluster-risc-v)

(defclass add-word-instruction
    (integer-register-register-add-instruction-mixin
     half-integer-register-register-instruction)
  ())
