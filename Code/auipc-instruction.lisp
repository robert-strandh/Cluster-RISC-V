(cl:in-package #:cluster-risc-v)

(defconstant +add-upper-immediate-to-pc-opcode+ #b0010111)

(defclass add-upper-immediate-to-pc-instruction (upper-instruction)
  ()
  (:default-initargs :opcode +add-upper-immediate-to-pc-opcode+))
