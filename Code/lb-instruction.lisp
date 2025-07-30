(cl:in-package #:cluster-risc-v)

(defclass lb-instruction (load-instruction)
  ()
  (:default-initargs :width #.(integer-log 1)))
