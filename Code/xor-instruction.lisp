(cl:in-package #:cluster-risc-v)

(defclass xor-instruction (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction xor-instruction))
  com:+function-7-xor+)

(defmethod function-3 ((instruction xor-instruction))
  com:+function-3-xor+)
