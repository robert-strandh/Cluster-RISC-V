(cl:in-package #:cluster-risc-v)

(defclass ori-instruction (non-shift-register-double-instruction)
  ())

(defmethod func-3 ((instruction ori-instruction))
  com:+func-3-ori+)
