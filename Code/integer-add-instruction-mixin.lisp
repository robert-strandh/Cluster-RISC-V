(cl:in-package #:cluster-risc-v)

(defconstant +integer-add-function-7+ #b0000000)

(defconstant +integer-add-function-3+ #b000)

(defclass integer-add-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-add-function-7+
   :function-3 +integer-add-function-3+))
