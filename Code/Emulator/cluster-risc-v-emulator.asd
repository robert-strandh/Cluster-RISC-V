(cl:in-package #:asdf-user)

(defsoystem "cluster-risc-v-emulator"
  :depends-on ("cluster-risc-v-common")
  :serial t
  :components
  ((:file "packages")
   (:file "registers")
   (:file "utilities")
   (:file "integer-register-register-double-instructions")
   (:file "memory")))
