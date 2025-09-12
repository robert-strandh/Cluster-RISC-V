(cl:in-package #:cluster-risc-v-instructions)

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

(defclass jalr-instruction (immediate-instruction)
  ((%offset :initarg :offset :reader offset)))

(defmethod initialize-instance :after
    ((instruction jalr-instruction) &key offset)
  (check-type offset (signed-byte 12)))
