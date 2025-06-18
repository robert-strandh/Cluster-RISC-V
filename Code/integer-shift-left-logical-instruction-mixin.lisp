(cl:in-package #:cluster-risc-v)

(defconstant +integer-register-register-shift-left-logical-function-7+
  #b0000000)

(defconstant +integer-register-register-shift-left-logical-function-3+
  #b001)

(defclass integer-register-register-shift-left-logical-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-register-register-shift-left-logical-function-7+
   :function-3 +integer-register-register-shift-left-logical-function-3+))
