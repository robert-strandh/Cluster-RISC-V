(cl:in-package #:cluster-risc-v)

(defclass slli-instruction (shift-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction slli-instruction))
  com:+func-3-slli+)

(defmethod func-7 ((instruction slli-instruction))
  com:+func-7-slli+)
