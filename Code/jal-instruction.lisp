(cl:in-package #:cluster-risc-v)

(defconstant +jump-and-link-opcode+ #b1101111)

(defclass jump-and-link-instruction (upper-instruction)
  ()
  (:default-initargs :opcode +jump-and-link-opcode+))
