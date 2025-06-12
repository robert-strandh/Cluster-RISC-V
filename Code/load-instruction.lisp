(cl:in-package #:cluster-risc-v)

(defconstant +opcode-load+ #b0000011)

(defclass load-instruction (immediate-instruction)
  ()
  (:default-initargs :opcode +opcode-load+))
