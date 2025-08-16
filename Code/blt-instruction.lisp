(cl:in-package #:cluster-risc-v)

(defclass blt-instruction (branch-instruction)
  ())

(defmethod func-3 ((instructino blt-instruction))
  com:+fun-3-blt+)
