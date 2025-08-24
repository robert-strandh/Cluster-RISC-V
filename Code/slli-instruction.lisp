(cl:in-package #:cluster-risc-v)

(defclass slli-instruction (integer-register-immediate-double-instruction)
  ((%shift-amount :initarg :shift-amount :reader shift-amount)))

(defmethod initialize-instance :after
    ((instruction slli-instruction) &key shift-amount)
  (check-type shift-amount (unsigned-byte 6)))

(defmethod func-3 ((instruction slli-instruction))
  com:+func-3-slli+)

(defmethod encode-instruction ((instruction slli-instruction))
  (logior (ash (shift-amount instruction) 20)
          (ash (register-number (source-register instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
