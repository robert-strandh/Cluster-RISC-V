(cl:in-package #:cluster-risc-v-instructions)

(defgeneric width (instruction))

(defclass load-instruction (instruction)
  ((%source-register
    :initarg :source-register
    :reader source-register)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)
   (%offset
    :initarg :offset
    :reader offset)))

(defmethod initialize-instance :after
    ((instruction load-instruction)
     &key offset)
  (check-type offset (signed-byte 12)))

(defclass ld-instruction (load-instruction)
  ())

(defclass lw-instruction (load-instruction)
  ())

(defclass lh-instruction (load-instruction)
  ())

(defclass lb-instruction (load-instruction)
  ())
