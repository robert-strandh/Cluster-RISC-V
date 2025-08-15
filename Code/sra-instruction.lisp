(cl:in-package #:cluster-risc-v)

(defclass sra-instruction (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction sra-instruction))
  com:+function-7-sra+)

(defmethod function-3 ((instruction sra-instruction))
  com:+function-3-sra+)
