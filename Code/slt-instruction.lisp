(cl:in-package #:cluster-risc-v)

(defconstant +slt-function-7+ #b0000000)

(defconstant +slt-function-3+ #b010)

(defclass slt-instruction
    (full-integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +slt-function-7+
   :function-3 +slt-function-3+))
