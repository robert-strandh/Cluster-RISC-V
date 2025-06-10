(cl:in-package #:cluster-risc-v)

(defclass register () ())

(defclass integer-register (register)
  ((%register-number :initarg :register-number :reader register-number)))

(defparameter *pc*
  (make-instance 'register))

(loop for i from 0 to 31
      for package = '#:cluster-risc-v
      for variable-name = (intern (format nil "*X~a*" i) package)
      do (proclaim `(special ,variable-name))
         (setf (symbol-value variable-name)
               (make-instance 'integer-register
                 :register-number i)))

(defparameter *zero* *x0*)

(defparameter *ra* *x1*)

(defparameter *return-address* *x1*)

(defparameter *sp* *x2*)

(defparameter *stack-pointer* *x2*)

