(cl:in-package #:cluster-risc-v)

(defconstant +sub-function-7+ #b0100000)

(defconstant +sub-function-3+ #b000)

(defclass sub-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +sub-function-7+
   :function-3 +sub-function-3+))
