(cl:in-package #:cluster-risc-v)

(defconstant +or-function-7+ #b0000000)

(defconstant +or-function-3+ #b110)

(defclass or-instruction (full-integer-register-register-instruction)
  ())

(defmethod function-7 ((instruction or-instruction))
  +or-function-7+)

(defmethod function-3 ((instruction or-instruction))
  +or-function-3+)
