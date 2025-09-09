(cl:in-package #:cluster-risc-v)

(defclass sb-instruction (store-instruction)
  ())

(defmethod width ((instruction sb-instruction))
  #.(integer-log 1))
