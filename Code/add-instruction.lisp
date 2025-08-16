(cl:in-package #:cluster-risc-v)

(defclass add-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction add-instruction))
  com:+func-7-add+)

(defmethod func-3 ((instruction add-instruction))
  com:+func-3-add+)
