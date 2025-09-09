(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v-instructions"
  :depends-on ()
  :serial t
  :components
  ((:file "packages")))
