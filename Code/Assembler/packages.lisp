(cl:in-package #:common-lisp-user)

(defpackage #:cluster-risc-v-assembler
  (:use #:common-lisp)
  (:local-nicknames (#:com #:cluster-risc-v-common)
                    (#:ins #:cluster-risc-v-instructions))
  (:export))
