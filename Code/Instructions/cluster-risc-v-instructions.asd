(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v-instructions"
  :depends-on ()
  :serial t
  :components
  ((:file "packages")
   (:file "registers")
   (:file "instruction")
   (:file "integer-register-register-instruction")
   (:file "integer-register-register-double-instructions")
   (:file "integer-register-register-word-instructions")
   (:file "immediate-instruction")))
