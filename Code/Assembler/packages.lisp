(cl:in-package #:common-lisp-user)

(defpackage #:cluster-risc-v
  (:use #:common-lisp)
  (:local-nicknames (#:com #:cluster-risc-v-common))
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
   #:branch-not-equal-instruction))
