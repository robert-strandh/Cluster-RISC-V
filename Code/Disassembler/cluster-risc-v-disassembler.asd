(cl:in-package #:asdf-user)

(defsystem "cluster-risc-v-disassembler"
  :depends-on ("cluster-risc-v-common" "cluster-risc-v-instructions")
  :serial t
  :components
  ((:file "packages")))
