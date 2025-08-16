(cl:in-package #:cluster-risc-v)

(defclass slli-instruction (integer-register-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction slli-instruction))
  com:+func-3-slli+)
