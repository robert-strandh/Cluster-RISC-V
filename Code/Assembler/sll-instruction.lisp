(cl:in-package #:cluster-risc-v)

(defclass sll-instruction (integer-register-register-double-instruction)
  ())

(defmethod func-7 ((instruction sll-instruction))
  com:+func-7-sll+)

(defmethod func-3 ((instruction sll-instruction))
  com:+func-3-sll+)
