(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v-emulator"
  :depends-on ("cluster-risc-v-common")
  :serial t
  :components
  ((:file "packages")
   (:file "registers")
   (:file "utilities")
   (:file "integer-register-register-double-instructions")))
