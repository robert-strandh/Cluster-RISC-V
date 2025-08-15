(cl:in-package #:cluster-risc-v)

(defclass or-instruction (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction or-instruction))
  com:+function-7-or+)

(defmethod function-3 ((instruction or-instruction))
  com:+function-3-or+)
