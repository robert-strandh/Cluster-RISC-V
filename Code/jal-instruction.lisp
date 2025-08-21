(cl:in-package #:cluster-risc-v)

(defclass jal-instruction (instruction)
  ((%offset
    :initarg :offset
    :reader offset)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))

(defmethod initialize-instance :after
    ((instruction jal-instruction) &key offset destination-register)
  (check-type destination-register integer-register)
  (check-type offset (signed-byte 21))
  (assert (evenp offset)))

(defmethod opcode ((instruction jal-instruction))
  com:+opcode-jal+)
