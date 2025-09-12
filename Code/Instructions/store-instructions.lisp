(cl:in-package #:cluster-risc-v-instructions)

(defclass store-instruction (instruction)
  ((%source-register-1
    :initarg :source-register-1
    :reader source-register-1)
   (%source-register-2
    :initarg :source-register-2
    :reader source-register-2)
   (%offset
    :initarg :offset
    :reader offset)))

(defmethod initialize-instance :after
    ((instruction store-instruction)
     &key offset)
  (check-type offset (signed-byte 12)))

(defclass sd-instruction (store-instruction)
  ())

(defclass sw-instruction (store-instruction)
  ())

(defclass sh-instruction (store-instruction)
  ())

(defclass sb-instruction (store-instruction)
  ())
