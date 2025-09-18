(cl:in-package #:common-lisp-user)

(defpackage #:cluster-risc-v-emulator
  (:use #:common-lisp)
  (:local-nicknames (#:com #:cluster-risc-v-common)
                    (#:ins #:cluster-risc-v-instructions)
  (:shadow #:read-byte #:write-byte)
  (:export
   #:*client*))
