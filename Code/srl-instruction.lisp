(cl:in-package #:cluster-risc-v)

(defclass srl-instruction (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction srl-instruction))
  com:+function-7-srl+)

(defmethod function-3 ((instruction srl-instruction))
  com:+function-3-srl+)
