(cl:in-package #:cluster-risc-v)

(defclass sub-instruction
    (integer-register-register-sub-instruction-mixin
     full-integer-register-register-instruction)
  ())
