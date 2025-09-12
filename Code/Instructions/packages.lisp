(cl:in-package #:common-lisp-user)

(defpackage #:cluster-risc-v-instructions
  (:use #:common-lisp)
  (:export
   #:*pc*
   #:*x0* #:*x1* #:*x2* #:*x2* #:*x4* #:*x5* #:*x6* #:*x7*
   #:*x8* #:*x9* #:*x10* #:*x11* #:*x12* #:*x13* #:*x14* #:*x15*
   #:*x16* #:*x17* #:*x18* #:*x19* #:*x20* #:*x21* #:*x22* #:*x23*
   #:*x24* #:*x25* #:*x26* #:*x27* #:*x28* #:*x29* #:*x30* #:*x31*
   #:*zero*
   #:*ra* #:*return-address*
   #:*sp* #:*stack-pointer*
   #:*gp* #:*global-pointer*
   #:*tp* #:*thread-pointer*
   #:*t0* #:*temporary-0*
   #:*t1* #:*temporary-1*
   #:*t2* #:*temporary-2*
   #:*t3* #:*temporary-3*
   #:*t4* #:*temporary-4*
   #:*t5* #:*temporary-5*
   #:*t6* #:*temporary-6*
   #:*s0* #:*saved-register-0*
   #:*s1* #:*saved-register-1*
   #:*s2* #:*saved-register-2*
   #:*s3* #:*saved-register-3*
   #:*s4* #:*saved-register-4*
   #:*s5* #:*saved-register-5*
   #:*s6* #:*saved-register-6*
   #:*s7* #:*saved-register-7*
   #:*s8* #:*saved-register-8*
   #:*s9* #:*saved-register-9*
   #:*s10* #:*saved-register-10*
   #:*s11* #:*saved-register-11*
   #:*fp* #:*frame-pointer*))
