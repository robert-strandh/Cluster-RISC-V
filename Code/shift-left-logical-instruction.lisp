(cl:in-package #:cluster-risc-v)

(defclass shift-left-logical-instruction
    (integer-register-register-shift-left-logical-instruction-mixin
     full-integer-register-register-instruction)
  ())
