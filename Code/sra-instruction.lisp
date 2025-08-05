(cl:in-package #:cluster-risc-v)

(defclass sra-instruction
    (sra-instruction-mixin
     full-integer-register-register-instruction)
  ())
