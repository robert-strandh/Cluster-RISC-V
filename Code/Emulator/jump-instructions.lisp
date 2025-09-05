(cl:in-package #:cluster-risc-v-emulator)

(defun execute-jalr-instruction (offset base-register destination-register)
  (let* ((base (integer-register-contents base-register))
         (new-pc (+ offset base *pc*)))
    (setf (integer-register-contents destination-register)
          (+ *pc* 4))
    (setf *pc* new-pc)))
