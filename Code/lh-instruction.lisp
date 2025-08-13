(cl:in-package #:cluster-risc-v)

(defclass lh-instruction (load-instruction)
  ())

(defmethod width ((instruction lh-instruction))
  #.(integer-log 2))
  
