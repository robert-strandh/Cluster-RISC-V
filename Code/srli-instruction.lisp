(cl:in-package #:cluster-risc-v)

(defconstant +srli-function-6+ #b000000)

(defconstant +srli-function-3+ #b101)

(defclass srli-instruction
    (integer-register-shift-immediate-instruction)
  ()
  (:default-initargs
   :function-6 +srli-function-6+
   :function-3 +srli-function-3+))

