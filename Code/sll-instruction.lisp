(cl:in-package #:cluster-risc-v)

(defclass sll-instruction (integer-register-register-double-instruction)
  ())

(defmethod function-7 ((instruction sll-instruction))
  com:+function-7-sll+)

(defmethod function-3 ((instruction sll-instruction))
  com:+function-3-sll+)
