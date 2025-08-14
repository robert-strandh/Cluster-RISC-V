(cl:in-package #:cluster-risc-v)

(defconstant +sll-function-7+ #b0000000)

(defconstant +sll-function-3+ #b001)

(defclass sll-instruction-mixin ()
  ())

(defmethod function-7 ((instruction sll-instruction-mixin))
  +sll-function-7+)

(defmethod function-3 ((instruction sll-instruction-mixin))
  +sll-function-3+)
