(cl:in-package #:cluster-risc-v)

(defclass sllw-instruction
    (sll-instruction-mixin half-integer-register-register-instruction)
  ())
