(cl:in-package #:cluster-risc-v)

(defclass lui-instruction (instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))

(defmethod opcode ((instruction lui-instruction))
  com:+opcode-lui+)
