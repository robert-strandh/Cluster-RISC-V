(cl:in-package #:cluster-risc-v)

(defconstant +load-upper-immediate-opcode+ #b0110111)

(defclass load-upper-immediate-instruction (upper-instruction)
  ()
  (:default-initargs :opcode +load-upper-immediate-opcode+))
