(cl:in-package #:cluster-risc-v)

(defclass instruction ()
  ((%opcode
    :initarg :opcode
    :reader opcode)))
