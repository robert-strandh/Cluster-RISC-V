(cl:in-package #:cluster-risc-v)

(defclass beq-instruction (branch-instruction)
  ())

(defmethod func-3 ((instruction beq-instruction))
  com:+func-3-beq+)
