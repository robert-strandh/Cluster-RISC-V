(cl:in-package #:cluster-risc-v)

(defclass add-word-instruction (half-integer-register-register-instruction)
  ()
  (:default-initargs
   :function-7 +add-function-7+
   :function-3 +add-function-3+))
