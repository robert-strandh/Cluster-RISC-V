(cl:in-package #:cluster-risc-v-instructions)

(defclass integer-register-immediate-word-instruction
    (integer-register-immediate-instruction)
  ())

(defclass addiw-instruction (integer-register-immediate-word-instruction)
  ())

(defclass shift-immediate-word-instruction
    (integer-register-immediate-word-instruction)
  ((%shift-amount :initarg :shift-amount :reader shift-amount)))

(defmethod initialize-instance :after
    ((instruction shift-immediate-word-instruction) &key shift-amount)
  (check-type shift-amount (unsigned-byte 5)))

(defclass slliw-instruction (shift-immediate-word-instruction)
  ())

(defclass srliw-instruction (shift-immediate-word-instruction)
  ())

(defclass sraiw-instruction (shift-immediate-word-instruction)
  ())
