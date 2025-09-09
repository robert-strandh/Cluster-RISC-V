(cl:in-package #:cluster-risc-v-instructions)

(defclass register () ())

(defclass integer-register (register)
  ((%register-number :initarg :register-number :reader register-number)))

(defparameter *pc*
  (make-instance 'register))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (loop for i from 0 to 31
        for package = '#:cluster-risc-v-instructions
        for variable-name = (intern (format nil "*X~a*" i) package)
        do (proclaim `(special ,variable-name))))

(loop for i from 0 to 31
      for package = '#:cluster-risc-v-instructions
      for variable-name = (intern (format nil "*X~a*" i) package)
      do (setf (symbol-value variable-name)
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

(defparameter *s0* *x8*)

(defparameter *saved-register-0* *x8*)

(defparameter *fp* *x8*)

(defparameter *frame-pointer-0* *x8*)

(defparameter *s1* *x9*)

(defparameter *saved-register-1* *x9*)

(defparameter *s2* *x18*)

(defparameter *saved-register-2* *x18*)

(defparameter *s3* *x19*)

(defparameter *saved-register-3* *x19*)

(defparameter *s4* *x20*)

(defparameter *saved-register-4* *x20*)

(defparameter *s5* *x21*)

(defparameter *saved-register-5* *x21*)

(defparameter *s6* *x22*)

(defparameter *saved-register-6* *x22*)

(defparameter *s7* *x23*)

(defparameter *saved-register-7* *x23*)

(defparameter *s8* *x24*)

(defparameter *saved-register-8* *x24*)

(defparameter *s9* *x25*)

(defparameter *saved-register-1* *x25*)

(defparameter *s10* *x26*)

(defparameter *saved-register-10* *x26*)

(defparameter *s11* *x27*)

(defparameter *saved-register-11* *x27*)
