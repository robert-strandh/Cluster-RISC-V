(cl:in-package #:cluster-risc-v)

(defconstant +jal-opcode+ #b1101111)

(defclass jal-instruction (upper-instruction)
  ()
  (:default-initargs :opcode +jal-opcode+))
