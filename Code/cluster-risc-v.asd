(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v"
  :depends-on ()
  :serial t
  :components
  ((:file "packages")
   (:file "registers")
   (:file "instructions")
   (:file "register-instruction")
   (:file "integer-register-register-instruction")
   (:file "immediate-instruction")
   (:file "integer-register-immediate-instruction")
   (:file "load-instruction")
   (:file "store-instruction")
   (:file "upper-instruction")))
