(cl:in-package #:cluster-risc-v)

(defclass sllw-instruction (integer-register-register-instruction)
  ())

(defmethod func-7 ((instruction sllw-instruction))
  com:+fun-7-sllw+)

(defmethod func-3 ((instruction sllw-instruction))
  com:+fun-3-sllw+)
