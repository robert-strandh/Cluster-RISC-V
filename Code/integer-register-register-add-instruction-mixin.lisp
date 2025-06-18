(cl:in-package #:cluster-risc-v)

(defconstant +integer-register-register-add-function-7+ #b0000000)

(defconstant +integer-register-register-add-function-3+ #b000)

(defclass integer-register-register-add-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-register-register-add-function-7+
   :function-3 +integer-register-register-add-function-3+))
