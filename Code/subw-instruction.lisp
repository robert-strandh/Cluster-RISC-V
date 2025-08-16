(cl:in-package #:cluster-risc-v)

(defclass subw-instruction
    (integer-register-register-instruction)
  ())

(defmethod func-7 ((instruction subw-instruction))
  com:+fun-7-subw+)

(defmethod func-3 ((instruction subw-instruction))
  com:+fun-3-subw+)
