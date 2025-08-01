(cl:in-package #:cluster-risc-v)

(defconstant +add-function-7+ #b0000000)

(defconstant +add-function-3+ #b000)

(defclass add-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +add-function-7+
   :function-3 +add-function-3+))
