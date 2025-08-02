(cl:in-package #:cluster-risc-v)

(defconstant +jalr-opcode+ #b1100111)

(defconstant +jalr-function-3+ #b000)

(defclass jalr-instruction (immediate-instruction)
  ()
  (:default-initargs
   :opcode +jal-opcode+
   :function-3 +jalr-function-3+))
