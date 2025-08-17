(cl:in-package #:cluster-risc-v)

(defclass sraiw-instruction (integer-register-immediate-word-instruction)
  ())

(defmethod func-3 ((instruction sraiw-instruction))
  com:+func-3-sraiw+)
