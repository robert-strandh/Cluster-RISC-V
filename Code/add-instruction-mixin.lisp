(cl:in-package #:cluster-risc-v)

(defconstant +add-function-7+ #b0000000)

(defconstant +add-function-3+ #b000)

(defclass add-instruction-mixin ()
  ())

(defmethod function-7 ((instruction add-instruction-mixin))
  +add-function-7)

(defmethod function-3 ((instruction add-instruction-mixin))
  +add-function-3)
