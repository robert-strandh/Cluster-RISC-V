(cl:in-package #:cluster-risc-v)

(defclass non-shift-immediate-double-instruction
    (integer-register-immediate-double-instruction)
  ((%immediate-value :initarg :immediate-value :reader immediate-value)))

(defmethod initialize-instance :after
    ((instruction non-shift-immediate-double-instruction)
     &key immediate-value)
  (check-type immediate-value (signed-byte 12)))

(defmethod encode-instruction
    ((instruction non-shift-immediate-double-instruction))
  (logior (ash (immediate-value instruction) 20)
          (ash (register-number (source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
