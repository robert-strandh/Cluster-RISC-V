(cl:in-package #:cluster-risc-v)

(defclass sw-instruction (store-instruction)
  ()
  (:default-initargs :width #.(integer-log 4)))
