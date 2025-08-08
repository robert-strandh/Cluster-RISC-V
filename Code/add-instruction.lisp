(cl:in-package #:cluster-risc-v)

(defclass add-instruction
    (add-instruction-mixin
     full-integer-register-register-instruction)
  ())
