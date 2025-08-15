(cl:in-package #:cluster-risc-v)

(defclass slt-instruction (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction slt-instruction))
  com:+function-7-slt+)

(defmethod function-3 ((instruction slt-instruction))
  com:+function-3-slt+)
