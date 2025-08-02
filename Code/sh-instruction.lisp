(cl:in-package #:cluster-risc-v)

(defclass sh-instruction (store-instruction)
  ()
  (:default-initargs :width #.(integer-log 2)))
