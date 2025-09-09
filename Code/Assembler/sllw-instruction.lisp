(cl:in-package #:cluster-risc-v)

(defclass sllw-instruction (integer-register-register-instruction)
  ())

(defmethod func-7 ((instruction sllw-instruction))
  com:+func-7-sllw+)

(defmethod func-3 ((instruction sllw-instruction))
  com:+func-3-sllw+)
