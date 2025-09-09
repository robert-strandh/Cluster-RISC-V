(cl:in-package #:cluster-risc-v)

(defclass srli-instruction (shift-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction srli-instruction))
  com:+func-3-srli+)

(defmethod func-7 ((instruction srli-instruction))
  com:+func-7-srli+)
