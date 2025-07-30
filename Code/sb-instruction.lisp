(cl:in-package #:cluster-risc-v)

(defclass sh-instruction (store-instruction)
  ()
  (:default-initarg :width #.(integer-log 1)))
