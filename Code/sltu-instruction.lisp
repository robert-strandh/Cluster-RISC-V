(cl:in-package #:cluster-risc-v)

(defclass sltu-instruction (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction sltu-instruction))
  com:+function-7-sltu+)

(defmethod function-3 ((instruction sltu-instruction))
  com:+function-3-sltu+)
