(cl:in-package #:cluster-risc-v)

(defclass lw-instruction (load-instruction)
  ())

(defmethod width ((instruction lw-instruction))
  #.(integer-log 4))
