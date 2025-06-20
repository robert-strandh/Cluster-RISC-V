(cl:in-package #:cluster-risc-v)

(defconstant +integer-register-register-shift-right-arithmetic-function-7+
  #b0100000)

(defconstant +integer-register-register-shift-right-arithmetic-function-3+
  #b101)

(defclass integer-register-register-shift-right-arithmetic-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-register-register-shift-right-arithmetic-function-7+
   :function-3 +integer-register-register-shift-right-arithmetic-function-3+))
