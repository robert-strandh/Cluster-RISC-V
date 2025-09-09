(cl:in-package #:cluster-risc-v)

(defclass sw-instruction (store-instruction)
  ())

(defmethod width ((instruction sw-instruction))
  #.(integer-log 4))
