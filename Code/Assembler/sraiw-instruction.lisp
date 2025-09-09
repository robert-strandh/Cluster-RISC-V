(cl:in-package #:cluster-risc-v)

(defclass sraiw-instruction (shift-immediate-word-instruction)
  ())

(defmethod func-3 ((instruction sraiw-instruction))
  com:+func-3-sraiw+)

(defmethod func-7 ((instruction sraiw-instruction))
  com:+func-7-sraiw+)
