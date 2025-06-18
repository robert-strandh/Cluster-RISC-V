(cl:in-package #:cluster-risc-v)

(defconstant +integer-subtract-function-7+ #b0100000)

(defconstant +integer-subtract-function-3+ #b000)

(defclass integer-subtract-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-subtract-function-7+
   :function-3 +integer-subtract-function-3+))
