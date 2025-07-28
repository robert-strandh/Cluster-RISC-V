(cl:in-package #:cluster-risc-v)

(defconstant +srai-function-6+ #b010000)

(defconstant +srai-function-3+ #b101)

(defclass srai-instruction
    (integer-register-shift-immediate-instruction)
  ()
  (:default-initargs
   :function-6 +srai-function-6+
   :function-3 +srai-function-3+))
