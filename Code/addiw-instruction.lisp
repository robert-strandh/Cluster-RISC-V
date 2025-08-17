(cl:in-package #:cluster-risc-v)

(defclass addiw-instruction (integer-register-immediate-word-instruction)
  ())

(defmethod func-3 ((instruction addiw-instruction))
  com:+func-3-addiw+)
