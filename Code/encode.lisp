(cl:in-package #:cluster-risc-v)

(defgeneric encode-intruction (instruction))

;;; This function takes a list of instructions and produces a vector
;;; of 32-bit unsigned integers.  Except for branch instructions, the
;;; instructions in the list are executed sequentially.
(defgeneric encode-program (instructions)

