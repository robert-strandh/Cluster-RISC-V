(cl:in-package #:cluster-risc-v)

(defclass and-instruction (full-integer-register-register-instruction)
  ())

(defmethod func-7 ((instruction and-instruction))
  com:+func-7-and+)

(defmethod func-3 ((instruction and-instruction))
  com:+func-3-and+)
