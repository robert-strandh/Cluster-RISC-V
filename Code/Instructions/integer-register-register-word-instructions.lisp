(cl:in-package #:cluster-risc-v-instructions)

(defclass integer-register-register-word-instruction
    (integer-register-register-instruction)
  ())

(defclass addw-instruction (integer-register-register-word-instruction)
  ())

(defclass subw-instruction
    (integer-register-register-word-instruction)
  ())

(defclass sllw-instruction (integer-register-register-word-instruction)
  ())

(defclass srlw-instruction (integer-register-register-word-instruction)
  ())

(defclass sraw-instruction (integer-register-register-word-instruction)
  ())
