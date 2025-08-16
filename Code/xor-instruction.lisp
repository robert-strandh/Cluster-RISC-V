(cl:in-package #:cluster-risc-v)

(defclass xor-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction xor-instruction))
  com:+func-7-xor+)

(defmethod func-3 ((instruction xor-instruction))
  com:+func-3-xor+)
