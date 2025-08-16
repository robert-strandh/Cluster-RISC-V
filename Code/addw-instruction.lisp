(cl:in-package #:cluster-risc-v)

(defclass addw-instruction (integer-register-register-instruction)
  ())

(defmethod func-7 ((instruction addw-instruction))
  com:+func-7-addw+)

(defmethod func-3 ((instruction addw-instruction))
  com:+func-3-addw+)
