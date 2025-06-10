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

(defparameter *gp* *x3*)

(defparameter *global-pointer* *x3*)

(defparameter *tp* *x4*)

(defparameter *thread-pointer* *x4*)

(defparameter *t0* *x5*)

(defparameter *temporary-0* *x5*)

(defparameter *t1* *x6*)

(defparameter *temporary-1* *x6*)

(defparameter *t2* *x7*)

(defparameter *temporary-2* *x7*)

(defparameter *t3* *x28*)

(defparameter *temporary-3* *x28*)

(defparameter *t4* *x29*)

(defparameter *temporary-4* *x29*)

(defparameter *t5* *x30*)

(defparameter *temporary-5* *x30*)

(defparameter *t6* *x31*)

(defparameter *temporary-6* *x31*)
