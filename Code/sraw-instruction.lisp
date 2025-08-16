(cl:in-package #:cluster-risc-v)

(defclass sraw-instruction
    (integer-register-register-instruction)
  ())

(defmethod func-7 ((instruction sraw-instruction))
  com:+fun-7-sraw+)

(defmethod func-3 ((instruction sraw-instruction))
  com:+fun-3-sraw+)
