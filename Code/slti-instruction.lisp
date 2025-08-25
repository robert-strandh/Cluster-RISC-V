(cl:in-package #:cluster-risc-v)

(defclass slti-instruction (non-shift-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction slti-instruction))
  com:+func-3-slti+)
