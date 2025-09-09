(cl:in-package #:cluster-risc-v)

(defclass bge-instruction (branch-instruction)
  ())

(defmethod func-3 ((instruction bge-instruction))
  com:+func-3-bge+)
