(cl:in-package #:cluster-risc-v-emulator)

;;; During emulation, this variable contains a hash table that maps
;;; instructions to addresses.
(defvar *addresses*)
