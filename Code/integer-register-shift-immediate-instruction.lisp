(cl:in-package #:cluster-risc-v)

(defclass integer-register-shift-immediate-instruction
    (integer-register-immediate-instruction)
  ((%shift-amount :initarg :shift-amount :reader shift-amount)
   (%function-6 :initarg :function-6 :reader function-6)))

(defmethod initialize-instance :after
    ((instruction integer-register-shift-immediate-instruction)
     &key function-6 shift-amount)
  (check-type function-6 (unsigned-byte 6))
  (check-type shift-amount (unsigned-byte 6)))

(defmethod encode-instruction
    ((instruction integer-register-shift-immediate-instruction))
  (logior (ash (function-6 instruction) 26)
          (ash (shift-amount instruction) 20)
          (ash (register-number (source-register instruction)) 15)
          (ash (function-3 instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
