(cl:in-package #:cluster-risc-v)

(defclass sll-instruction
    (sll-instruction-mixin full-integer-register-register-instruction)
  ())
