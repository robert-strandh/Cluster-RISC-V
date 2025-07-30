(cl:in-package #:cluster-risc-v)

(defclass lw-instruction (load-instruction)
  ()
  (:default-initargs :width #.(integer-log 4)))
