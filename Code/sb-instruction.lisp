(cl:in-package #:cluster-risc-v)

(defclass sb-instruction (store-instruction)
  ())

(defmethod width ((instruction sh-instruction))
  #.(integer-log 1))
