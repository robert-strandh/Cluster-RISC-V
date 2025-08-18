(cl:in-package #:cluster-risc-v)

;;; The TARGET slot contains an INSTRUCTION instance.

(defclass branch-instruction (instruction)
  ((%target
    :initarg :target
    :reader target)
   (%source-register-1
    :initarg :source-register-1
    :reader source-register-1)
   (%source-register-2
    :initarg :source-register-2
    :reader source-register-2)))

(defmethod initialize-instance :after
    ((instruction branch-instruction)
     &key
       source-register-1
       source-register-2
       target)
  (check-type source-register-1 integer-register)
  (check-type source-register-2 integer-register)
  (check-type target instruction))

(defmethod opcode ((instruction branch-instruction))
  com:+opcode-branch+)
