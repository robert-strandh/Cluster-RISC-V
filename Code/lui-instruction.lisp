(cl:in-package #:cluster-risc-v)

(defclass lui-instruction (upper-instruction)
  ())

(defmethod opcode ((instruction lui-instruction))
  com:+opcode-lui+)
