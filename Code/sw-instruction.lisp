(cl:in-package #:cluster-risc-v)

(defclass sw-instruction (store-instruction)
  ())

(defmethod width ((instruction sh-instruction))
  #.(integer-log 4))
