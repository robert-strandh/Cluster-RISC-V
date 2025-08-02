(cl:in-package #:cluster-risc-v)

(defclass sd-instruction (store-instruction)
  ()
  (:default-initargs :width #.(integer-log 8)))
