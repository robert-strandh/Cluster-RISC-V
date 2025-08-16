(cl:in-package #:cluster-risc-v)

(defclass sltiu-instruction (integer-register-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction sltiu-instruction))
  com:+func-3-sltiu+)
