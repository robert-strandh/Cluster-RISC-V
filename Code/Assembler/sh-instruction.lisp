(cl:in-package #:cluster-risc-v)

(defclass sh-instruction (store-instruction)
  ())

(defmethod width ((instruction sh-instruction))
  #.(integer-log 2))
