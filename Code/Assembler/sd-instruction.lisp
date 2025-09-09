(cl:in-package #:cluster-risc-v)

(defclass sd-instruction (store-instruction)
  ())

(defmethod width ((instruction sd-instruction))
  #.(integer-log 8))
