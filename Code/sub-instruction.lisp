(cl:in-package #:cluster-risc-v)

(defclass sub-instruction
    (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction sub-instruction))
  com:+func-7-sub+)

(defmethod func-3 ((instruction sub-instruction))
  com:+func-3-sub+)
