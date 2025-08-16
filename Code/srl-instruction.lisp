(cl:in-package #:cluster-risc-v)

(defclass srl-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction srl-instruction))
  com:+func-7-srl+)

(defmethod func-3 ((instruction srl-instruction))
  com:+func-3-srl+)
