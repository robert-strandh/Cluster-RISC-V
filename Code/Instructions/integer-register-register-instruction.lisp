(cl:in-package #:cluster-risc-v-instructions)

(defgeneric source-register-1 (instruction))

(defgeneric source-register-2 (instruction))

(defgeneric destination-register-1 (instruction))

(defclass integer-register-register-instruction (instruction)
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
    ((instruction integer-register-register-instruction)
     &key
       source-register-1
       source-register-2
       destination-register)
  (check-type source-register-1 integer-register)
  (check-type source-register-2 integer-register)
  (check-type destination-register integer-register))
