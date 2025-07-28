(cl:in-package #:cluster-risc-v)

(defclass sra-instruction
    (integer-register-register-sra-instruction-mixin
     full-integer-register-register-instruction)
  ())
