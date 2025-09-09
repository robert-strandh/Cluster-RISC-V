(cl:in-package #:cluster-risc-v)

(defclass shift-immediate-word-instruction
    (integer-register-immediate-word-instruction)
  ((%shift-amount :initarg :shift-amount :reader shift-amount)))

(defmethod initialize-instance :after
    ((instruction shift-immediate-word-instruction) &key shift-amount)
  (check-type shift-amount (unsigned-byte 5)))

(defmethod encode-instruction
    ((instruction shift-immediate-word-instruction))
  (logior (ash (func-7 instruction) 26)
          (ash (shift-amount instruction) 20)
          (ash (register-number (source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
