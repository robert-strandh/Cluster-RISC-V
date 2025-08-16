(cl:in-package #:cluster-risc-v)

(defclass ori-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-3 ((instruction ori-instruction))
  com:+func-3-ori+)
