(cl:in-package #:cluster-risc-v)

(defclass slt-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction slt-instruction))
  com:+func-7-slt+)

(defmethod func-3 ((instruction slt-instruction))
  com:+func-3-slt+)
