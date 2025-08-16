(cl:in-package #:cluster-risc-v)

(defclass andi-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-3 ((instruction andi-instruction))
  com:+func-3-andi+)
