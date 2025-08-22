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

(defmethod encode-instruction ((instruction jal-instruction))
  (let ((offset (offset instruction)))
    (logior (ash (ldb (byte 1 20) offset) 31)
            (ash (ldb (byte 10 10) offset) 21)
            (ash (ldb (byte 1 11) offset) 20)
            (ash (ldb (byte 8 19) offset) 12)
            (ash (register-number (destination-register instruction)) 7)
            (opcode instruction))))
