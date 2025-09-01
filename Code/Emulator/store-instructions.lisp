(cl:in-package #:cluster-risc-v-emulator)

(defun execute-store-instruction
    (widh offset base-register source-register)
  (declare (ignore widh source-register))
  (let ((address (+ (integer-register-contents base-register) offset)))
    (declare (ignore address))))


