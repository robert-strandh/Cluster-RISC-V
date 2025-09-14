(cl:in-package #:cluster-risc-v-disassembler)

(defparameter *integer-registers*
  (make-array
   32
   :initial-contents
   (loop for i from 0 below 32
         for name = (format nil "*X~d*" i)
         for symbol = (intern name (find-package '#:ins))
         collect (symbol-value symbol))))
