(cl:in-package #:cluster-risc-v-emulator)

;;; During emulation, this variable contains a hash table that maps
;;; instructions to addresses.
(defvar *addresses*)

(defun instruction-address (instruction)
  (gethash instruction *addresses*))

(defun (setf instruction-address) (address instruction)
  (setf (gethash instruction *addresses*) address))
