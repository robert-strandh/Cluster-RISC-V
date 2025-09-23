(cl:in-package #:cluster-risc-v-emulator)

(defun execute-lui-instruction (raw-immediate-value destination-register)
  (setf (integer-register-contents destination-register)
        (ash (sign-extend-20 raw-immediate-value) 12)))

(defun execute-auipc-instruction (raw-immediate-value destination-register)
  (setf (integer-register-contents destination-register)
        (+ (ash (sign-extend-20 raw-immediate-value) 12)
           (instruction-address *pc*))))
