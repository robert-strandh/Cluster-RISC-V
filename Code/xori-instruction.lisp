(cl:in-package #:cluster-risc-v)

(defclass xori-instruction (non-shift-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction xori-instruction))
  com:+func-3-xori+)
