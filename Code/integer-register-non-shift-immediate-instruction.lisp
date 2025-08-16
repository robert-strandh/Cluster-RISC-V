(cl:in-package #:cluster-risc-v)

(defclass integer-register-non-shift-immediate-instruction
    (integer-register-immediate-instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)))

(defmethod initialize-instance :after
    ((instruction integer-register-non-shift-immediate-instruction)
     &key
       immediate-value)
  (check-type immediate-value (signed-byte 12)))

(defmethod encode-instruction
    ((instruction integer-register-non-shift-immediate-instruction))
  (logior (ash (immediate-value instruction) 20)
          (ash (register-number (source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
