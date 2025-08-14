(cl:in-package #:cluster-risc-v)

(defgeneric function-7 (instruction))

(defgeneric function-3 (instruction))

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

(defmethod initialize-instance :after
    ((instruction register-instruction)
     &key
       function-7
       function-3)
  (check-type function-7 (unsigned-byte 7))
  (check-type function-3 (unsigned-byte 3)))
