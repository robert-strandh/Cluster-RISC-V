(cl:in-package #:cluster-risc-v)

(defclass lh-instruction (load-instruction)
  ()
  (:default-initargs :width #.(integer-log 2)))
