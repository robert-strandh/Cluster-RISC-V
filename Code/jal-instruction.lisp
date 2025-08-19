(cl:in-package #:cluster-risc-v)

(defclass jal-instruction (upper-instruction)
  ((%offset
    :initarg :offset
    :reader offset)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))

(defmethod opcode ((instruction jal-instruction))
  com:+opcode-jal+)
