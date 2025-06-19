(cl:in-package #:cluster-risc-v)

(defclass shift-right-logical-instruction
    (integer-register-register-shift-right-logical-instruction-mixin
     full-integer-register-register-instruction)
  ())
