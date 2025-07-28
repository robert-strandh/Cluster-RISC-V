(cl:in-package #:cluster-risc-v)

(defconstant +jump-and-link-register-opcode+ #b1100111)

(defconstant +jump-and-link-register-function-3+ #b000)

(defclass jump-and-link-register-instruction (immediate-instruction)
  ()
  (:default-initargs
   :opcode +jump-and-link-opcode+
   :function-3 +jump-and-link-register-function-3+))
