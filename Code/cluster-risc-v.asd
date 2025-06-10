(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v"
  :depends-on ()
  :serial t
  :components
  ((:file "packages")
   (:file "registers")
   (:file "instructions")
   (:file "register-instruction")))
