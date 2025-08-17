(cl:in-package #:common-lisp-user)

(defpackage #:cluster-risc-v-emulator
  (:use #:common-lisp)
  (:local-nicknames (#:com #:cluster-risc-v-common))
  (:shadow #:read-byte #:write-byte)
  (:export
   #:*client*))
