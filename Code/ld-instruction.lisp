(cl:in-package #:cluster-risc-v)

(defconstant +opcode-ld+ #b0000011)

(defclass ld-instruction (immediate-instruction)
  ()
  (:default-initargs :opcode +opcode-ld+))
