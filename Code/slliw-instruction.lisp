(cl:in-package #:cluster-risc-v)

(defclass slliw-instruction (shift-immediate-word-instruction)
  ())

(defmethod func-3 ((instruction slliw-instruction))
  com:+func-3-slliw+)

(defmethod func-7 ((instruction slliw-instruction))
  com:+func-7-slliw+)
