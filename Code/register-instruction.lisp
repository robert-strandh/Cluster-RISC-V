(cl:in-package #:cluster-risc-v)

(defclass register-instruction (instruction)
  ((%source-register-1
    :initarg :source-register-1
    :reader source-register-1)
   (%source-register-2
    :initarg :source-register-2
    :reader source-register-2)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))
