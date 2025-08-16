(cl:in-package #:cluster-risc-v)

(defclass sraw-instruction
    (integer-register-register-instruction)
  ())

(defmethod func-7 ((instruction sraw-instruction))
  com:+func-7-sraw+)

(defmethod func-3 ((instruction sraw-instruction))
  com:+func-3-sraw+)
