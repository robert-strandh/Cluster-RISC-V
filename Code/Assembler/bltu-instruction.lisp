(cl:in-package #:cluster-risc-v)

(defclass bltu-instruction (branch-instruction)
  ())

(defmethod func-3 ((instruction bltu-instruction))
  com:+func-3-bltu+)
