(cl:in-package #:cluster-risc-v)

(defconstant +bltu-function-3+ #b110)

(defclass bltu-instruction (branch-instruction)
  ())
