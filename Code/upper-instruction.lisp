(cl:in-package #:cluster-risc-v)

(defclass upper-instruction (instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))
