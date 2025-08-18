(cl:in-package #:cluster-risc-v)

(defclass jal-instruction (upper-instruction)
  ())

(defmethod opcode ((instruction jal-instruction))
  com:+opcode-jal+)
