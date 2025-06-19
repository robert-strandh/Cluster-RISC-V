(cl:in-package #:cluster-risc-v)

(defconstant +integer-register-register-subtract-function-7+ #b0100000)

(defconstant +integer-register-register-subtract-function-3+ #b000)

(defclass integer-register-register-subtract-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-register-register-subtract-function-7+
   :function-3 +integer-register-register-subtract-function-3+))
