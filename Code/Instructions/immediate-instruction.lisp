(cl:in-package #:cluster-risc-v-instructions)

(defclass immediate-instruction (instruction)
  ((%source-register
    :initarg :source-register
    :reader source-register)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))

(defmethod initialize-instance :after
    ((instruction immediate-instruction)
     &key
       source-register
       destination-register)
  (check-type source-register register)
  (check-type destination-register register))
