(cl:in-package #:cluster-risc-v)

(defclass addi-instruction (integer-register-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction addi-instruction))
  com:+func-3-addi+)
