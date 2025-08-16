(cl:in-package #:cluster-risc-v)

(defclass or-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction or-instruction))
  com:+func-7-or+)

(defmethod func-3 ((instruction or-instruction))
  com:+func-3-or+)
