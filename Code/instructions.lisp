(cl:in-package #:cluster-risc-v)

(defclass instruction ()
  ((%opcode
    :initarg :opcode
    :reader opcode)))

(defconstant +opcode-immediate+ #b0010011)

(defclass integer-register-immediate-instruction (immediate-instruction)
  ()
  (:default-initargs :opcode +opcode-immediate+))

(defconstant +opcode-register+ #b0110011)

(defclass integer-register-register-instruction (register-instruction)
  ()
  (:default-initargs :opcode +opcode-register+))

(defconstant +opcode-load+ #b0000011)

(defclass load-instruction (immediate-instruction)
  ()
  (:default-initargs :opcode +opcode-load+))
