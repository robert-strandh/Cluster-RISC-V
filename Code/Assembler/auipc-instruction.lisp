(cl:in-package #:cluster-risc-v)

(defclass auipc-instruction (upper-instruction)
  ())

(defmethod opcode ((instruction auipc-instruction))
  com:+opcode-auipc+)
