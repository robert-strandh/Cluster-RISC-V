(cl:in-package #:cluster-risc-v)

(defclass instruction ()
  ((%opcode
    :initarg :opcode
    :reader opcode)))

(defmethod initialize-instance :after
    ((instruction instruction) &key opcode)
  (check-type opcode (unsigned-byte 7)))
