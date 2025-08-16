(cl:in-package #:cluster-risc-v)

(defclass jalr-instruction (immediate-instruction)
  ())

(defmethod opcode ((instruction jalr-instruction))
  com:+opcode-jalr+)

(defmethod func-3 ((instruction jalr-instruction))
  com:+func-3-jalr+)
