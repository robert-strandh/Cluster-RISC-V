(cl:in-package #:common-lisp-user)

(defpackage #:cluster-risc-v
  (:use #:common-lisp)
  (:export
   #:addi-instruction
   #:add-instruction
   #:add-upper-immediate-to-pc-instruction
   #:add-word-instruction
   #:andi-instruction
   #:and-instruction
   #:branch-equal-instruction
   #:branch-greater-or-equal-instruction
   #:branch-greater-or-equal-unsigned-instruction
   #:branch-less-than-instruction
   #:branch-less-than-unsigned-instruction
   #:branch-not-equal-instruction
   #:half-integer-register-register-set-less-than-instruction
   #:half-integer-register-register-set-less-than-unsigned-instruction
   #:half-integer-register-register-shift-left-logical-instruction
   #:half-integer-register-register-shift-right-arithmetic-instruction
   #:half-integer-register-register-shift-right-logical-instruction
   #:half-integer-register-register-subtract-instruction
   #:integer-register-register-add-instruction
   #:integer-register-register-shift-left-logical-instruction
   #:integer-register-register-shift-right-arithmetic-instruction
   #:integer-register-register-shifr-right-logical-instruction))
   
