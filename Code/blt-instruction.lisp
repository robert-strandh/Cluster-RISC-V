(cl:in-package #:cluster-risc-v)

(defclass blt-instruction (branch-instruction)
  ())

(defmethod func-3 ((instructino blt-instruction))
  com:+func-3-blt+)
