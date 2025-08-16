(cl:in-package #:cluster-risc-v)

(defclass sra-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction sra-instruction))
  com:+func-7-sra+)

(defmethod func-3 ((instruction sra-instruction))
  com:+func-3-sra+)
