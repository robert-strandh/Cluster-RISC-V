(cl:in-package #:cluster-risc-v)

(defclass and-instruction (full-integer-register-register-instruction)
  ())

(defmethod function-7 ((instruction and-instruction))
  com:+function-7-and+)

(defmethod function-3 ((instruction and-instruction))
  com:+function-3-and+)
