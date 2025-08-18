(cl:in-package #:cluster-risc-v)

(defclass sd-instruction (store-instruction)
  ())

(defmethod width ((instruction sh-instruction))
  #.(integer-log 8))
