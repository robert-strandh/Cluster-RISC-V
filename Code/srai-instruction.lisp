(cl:in-package #:cluster-risc-v)

(defclass srai-instruction (integer-register-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction srai-instruction))
  com:+func-3-srai+)
