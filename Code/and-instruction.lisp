(cl:in-package #:cluster-risc-v)

(defconstant +and-function-7+ #b0000000)

(defconstant +and-function-3+ #b111)

(defclass and-instruction (full-integer-register-register-instruction)
  ())

(defmethod function-7 ((instruction and-instruction))
  +and-function-7+)

(defmethod function-3 ((instruction and-instruction))
  +and-function-3+)
