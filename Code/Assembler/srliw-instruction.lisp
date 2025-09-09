(cl:in-package #:cluster-risc-v)

(defclass srliw-instruction (shift-immediate-word-instruction)
  ())

(defmethod func-3 ((instruction srliw-instruction))
  com:+func-3-srliw+)

(defmethod func-7 ((instruction srliw-instruction))
  com:+func-7-srliw+)
