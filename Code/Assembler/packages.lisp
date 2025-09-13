(cl:in-package #:common-lisp-user)

(defpackage #:cluster-risc-v
  (:use #:common-lisp)
  (:local-nicknames (#:com #:cluster-risc-v-common)
                    (#:ins #:cluster-risc-v-instructions))
  (:export))
