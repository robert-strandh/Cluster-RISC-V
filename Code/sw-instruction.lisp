(cl:in-package #:cluster-risc-v)

(defclass sw-instruction (store-instruction)
  ()
  (:default-initarg :width #.(integer-log 4)))
