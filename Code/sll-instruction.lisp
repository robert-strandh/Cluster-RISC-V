(cl:in-package #:cluster-risc-v)

(defclass sll-instruction
    (integer-register-register-sll-instruction-mixin
     full-integer-register-register-instruction)
  ())
