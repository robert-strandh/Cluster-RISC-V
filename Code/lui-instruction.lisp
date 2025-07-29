(cl:in-package #:cluster-risc-v)

(defconstant +lui-opcode+ #b0110111)

(defclass lui-instruction (upper-instruction)
  ()
  (:default-initargs :opcode +lui-opcode+))
