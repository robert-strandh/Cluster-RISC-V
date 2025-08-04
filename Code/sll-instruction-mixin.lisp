(cl:in-package #:cluster-risc-v)

(defconstant +sll-function-7+ #b0000000)

(defconstant +sll-function-3+ #b001)

(defclass sll-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +sll-function-7+
   :function-3 +sll-function-3+))
