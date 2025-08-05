(cl:in-package #:cluster-risc-v)

(defconstant +srl-function-7+
  #b0000000)

(defconstant +srl-function-3+
  #b101)

(defclass srl-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +srl-function-7+
   :function-3 +srl-function-3+))
