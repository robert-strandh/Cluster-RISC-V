(cl:in-package #:cluster-risc-v)

(defclass jalr-instruction (immediate-instruction)
  ((%offset :initarg :offset :reader offset)))

(defmethod initialize-instance :after
    ((instruction jalr-instruction) &key offset)
  (check-type offset (signed-byte 12)))

(defmethod opcode ((instruction jalr-instruction))
  com:+opcode-jalr+)

(defmethod func-3 ((instruction jalr-instruction))
  com:+func-3-jalr+)
