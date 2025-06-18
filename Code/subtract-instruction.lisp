(cl:in-package #:cluster-risc-v)

(defconstant +subtract-function-7+ #b0100000)

(defconstant +subtract-function-3+ #b000)

(defclass subtract-instruction (full-integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +subtract-function-7+
   :function-3 +subtract-function-3+))
