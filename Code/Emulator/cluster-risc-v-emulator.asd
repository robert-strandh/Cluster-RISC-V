(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v-emulator"
  :depends-on ("cluster-risc-v-common" "cluster-risc-v-instrucitions")
  :serial t
  :components
  ((:file "packages")
   (:file "registers")
   (:file "utilities")
   (:file "integer-register-register-double-instructions")
   (:file "integer-register-immediate-double-instructions")
   (:file "branch-instructions")
   (:file "jump-instructions")
   (:file "upper-instructions")
   (:file "memory")
   (:file "load-instructions")
   (:file "store-instructions")
   (:file "execute-instruction")))
