(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v"
  :depends-on ("cluster-risc-v-common" "cluster-risc-v-instructions")
  :serial t
  :components
  ((:file "packages")
   (:file "encode")
   (:file "integer-register-register-instruction")
   (:file "integer-register-register-double-instructions")
   (:file "integer-register-register-word-instructions")
   (:file "integer-register-immediate-double-instructions")
   (:file "integer-register-immediate-word-instructions")
   (:file "load-instructions")
   (:file "store-instructions")
   (:file "upper-instructions")
   (:file "branch-instructions")
   (:file "jal-instruction")
   (:file "jalr-instruction")))
