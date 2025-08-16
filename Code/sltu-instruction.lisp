(cl:in-package #:cluster-risc-v)

(defclass sltu-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction sltu-instruction))
  com:+func-7-sltu+)

(defmethod func-3 ((instruction sltu-instruction))
  com:+func-3-sltu+)
