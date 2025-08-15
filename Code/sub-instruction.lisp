(cl:in-package #:cluster-risc-v)

(defclass sub-instruction
    (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction sub-instruction))
  com:+function-7-sub+)

(defmethod function-3 ((instruction sub-instruction))
  com:+function-3-sub+)
