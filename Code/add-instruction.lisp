(cl:in-package #:cluster-risc-v)

(defclass add-instruction
    (integer-add-instruction-mixin
     full-integer-register-register-instruction)
  ())
