(cl:in-package #:cluster-risc-v)

(defconstant +integer-register-register-set-less-than-unsigned-function-7+
  #b0000000)

(defconstant +integer-register-register-set-less-than-unsigned-function-3+
  #b011)

(defclass integer-register-register-set-less-than-unsigned-instruction-mixin ()
  ()
  (:default-initargs
   :function-7 +integer-register-register-set-less-than-unsigned-function-7+
   :function-3 +integer-register-register-set-less-than-unsigned-function-3+))
