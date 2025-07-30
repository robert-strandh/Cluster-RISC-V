(cl:in-package #:cluster-risc-v)

(defclass sd-instruction (store-instruction)
  ()
  (:default-initarg :width #.(integer-log 8)))
