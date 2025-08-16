(cl:in-package #:cluster-risc-v)

(defclass srli-instruction (integer-register-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction srli-instruction))
  com:+func-3-srli+)
