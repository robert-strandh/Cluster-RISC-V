(cl:in-package #:cluster-risc-v)

(defclass srai-instruction (shift-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction srai-instruction))
  com:+func-3-srai+)

(defmethod func-7 ((instruction srai-instruction))
  com:+func-7-srai+)
