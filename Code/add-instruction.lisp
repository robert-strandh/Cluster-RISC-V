(cl:in-package #:cluster-risc-v)

(defclass add-instruction (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction add-instruction))
  com:+function-7-add+)

(defmethod function-3 ((instruction add-instruction))
  com:+function-3-add+)
