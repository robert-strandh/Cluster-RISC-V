(cl:in-package #:cluster-risc-v)

(defclass sltiu-instruction (non-shift-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction sltiu-instruction))
  com:+func-3-sltiu+)
