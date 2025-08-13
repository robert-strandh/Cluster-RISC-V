(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v-common"
  :depends-on ()
  :serial t
  :components
  ((:file "packages")))
