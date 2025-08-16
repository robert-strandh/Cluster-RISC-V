(cl:in-package #:cluster-risc-v)

(defclass bgeu-instruction (branch-instruction)
  ())

(defmethod func-3 ((instruction bgeu-instruction))
  com:+func-3-bgeu+)
