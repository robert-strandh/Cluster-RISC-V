(cl:in-package #:cluster-risc-v)

(defclass ld-instruction (load-instruction)
  ()
  (:default-initargs :width #.(integer-log 8)))
