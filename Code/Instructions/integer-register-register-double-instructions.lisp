(cl:in-package #:cluster-risc-v-instructions)

(defclass integer-register-register-double-instruction
    (integer-register-register-instruction)
  ())

(defclass add-instruction (integer-register-register-double-instruction)
  ())

(defclass sub-instruction
    (integer-register-register-double-instruction)
  ())

(defclass sll-instruction (integer-register-register-double-instruction)
  ())

(defclass srl-instruction (integer-register-register-double-instruction)
  ())

(defclass sra-instruction (integer-register-register-double-instruction)
  ())

(defclass slt-instruction (integer-register-register-double-instruction)
  ())

(defclass sltu-instruction (integer-register-register-double-instruction)
  ())

(defclass and-instruction (full-integer-register-register-instruction)
  ())

(defclass or-instruction (integer-register-register-double-instruction)
  ())

(defclass xor-instruction (integer-register-register-double-instruction)
  ())
