(cl:in-package #:cluster-risc-v)

(defclass lb-instruction (load-instruction)
  ())

(defmethod width ((instruction lb-instruction))
  #.(integer-log 1))
