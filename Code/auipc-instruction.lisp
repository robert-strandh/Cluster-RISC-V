(cl:in-package #:cluster-risc-v)

(defconstant +auipc-opcode+ #b0010111)

(defclass auipc-instruction (upper-instruction)
  ()
  (:default-initargs :opcode +auipc-opcode+))
