(cl:in-package #:cluster-risc-v)

(defclass xori-instruction (integer-register-immediate-double-instruction)
  ())

(defmethod func-3 ((instruction xori-instruction))
  com:+func-3-xori+)
