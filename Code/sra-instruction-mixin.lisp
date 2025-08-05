(cl:in-package #:cluster-risc-v)

(defconstant +sra-function-7+
  #b0100000)

(defconstant +sra-function-3+
  #b101)

(defclass sra-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +sra-function-7+
   :function-3 +sra-function-3+))
