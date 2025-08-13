(cl:in-package #:cluster-risc-v)

(defclass ld-instruction (load-instruction)
  ())

(defmethod width ((instruction ld-instruction))
  #.(integer-log 8))
