(cl:in-package #:cluster-risc-v)

(defconstant +slli-function-6+ #b000000)

(defconstant +slli-function-3+ #b001)

(defclass slli-instruction
    (integer-register-shift-immediate-instruction)
  ()
  (:default-initargs
   :function-6 +slli-function-6+
   :function-3 +slli-function-3+))
