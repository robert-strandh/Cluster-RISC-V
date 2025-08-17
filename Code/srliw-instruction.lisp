(cl:in-package #:cluster-risc-v)

(defclass srliw-instruction (integer-register-immediate-word-instruction)
  ())

(defmethod func-3 ((instruction srliw-instruction))
  com:+func-3-srliw+)
