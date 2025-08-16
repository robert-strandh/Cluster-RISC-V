(cl:in-package #:cluster-risc-v)

(defclass srlw-instruction (integer-register-register-instruction)
  ())

(defmethod func-7 ((instruction srlw-instruction))
  com:+fun-7-srlw+)

(defmethod func-3 ((instruction srlw-instruction))
  com:+fun-3-srlw+)
