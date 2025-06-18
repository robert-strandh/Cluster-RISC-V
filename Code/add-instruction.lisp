(cl:in-package #:cluster-risc-v)

(defclass add-instruction
    (integer-register-register-add-instruction-mixin
     full-integer-register-register-instruction)
  ())
