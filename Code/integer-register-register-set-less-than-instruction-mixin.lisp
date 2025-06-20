(cl:in-package #:cluster-risc-v)

(defconstant +integer-register-register-set-less-than-function-7+ #b0000000)

(defconstant +integer-register-register-set-less-than-function-3+ #b010)

(defclass integer-register-register-set-less-than-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-register-register-set-less-than-function-7+
   :function-3 +integer-register-register-set-less-than-function-3+))
