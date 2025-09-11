(cl:in-package #:cluster-risc-v-instructions)

(defclass integer-register-immediate-double-instruction
    (integer-register-immediate-instruction)
  ())

(defclass non-shift-immediate-double-instruction
    (integer-register-immediate-double-instruction)
  ((%immediate-value :initarg :immediate-value :reader immediate-value)))

(defmethod initialize-instance :after
    ((instruction non-shift-immediate-double-instruction)
     &key immediate-value)
  (check-type immediate-value (signed-byte 12)))

(defclass addi-instruction (non-shift-immediate-double-instruction)
  ())

(defclass slti-instruction (non-shift-immediate-double-instruction)
  ())

(defclass sltiu-instruction (non-shift-immediate-double-instruction)
  ())

(defclass andi-instruction (non-shift-register-double-instruction)
  ())

(defclass ori-instruction (non-shift-register-double-instruction)
  ())

(defclass xori-instruction (non-shift-immediate-double-instruction)
  ())

(defclass shift-immediate-double-instruction
    (integer-register-immediate-double-instruction)
  ((%shift-amount :initarg :shift-amount :reader shift-amount)))

(defmethod initialize-instance :after
    ((instruction shift-immediate-double-instruction) &key shift-amount)
  (check-type shift-amount (unsigned-byte 6)))

(defclass slli-instruction (shift-immediate-double-instruction)
  ())

(defclass srli-instruction (shift-immediate-double-instruction)
  ())

(defclass srai-instruction (shift-immediate-double-instruction)
  ())
