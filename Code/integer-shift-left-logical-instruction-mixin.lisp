(cl:in-package #:cluster-risc-v)

(defconstant +integer-shift-left-logical-function-7+ #b0000000)

(defconstant +integer-shift-left-logical-function-3+ #b001)

(defclass integer-shift-left-logical-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-shift-left-logical-function-7+
   :function-3 +integer-shift-left-logical-function-3+))
