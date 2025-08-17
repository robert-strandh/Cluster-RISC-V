(cl:in-package #:cluster-risc-v)

(defclass slliw-instruction (integer-register-immediate-word-instruction)
  ())

(defmethod func-3 ((instruction slliw-instruction))
  com:+func-3-slliw+)
