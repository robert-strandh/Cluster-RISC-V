(cl:in-package #:cluster-risc-v)

(defclass sraw-instruction
    (sra-instruction-mixin
     half-integer-register-register-instruction)
  ())
