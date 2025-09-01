(cl:in-package #:cluster-risc-v-emulator)

(defun execute-instruction (instruction)
  (ecase (ldb (byte 7 0) instruction)
    (#b0000011
     (let ((offset (ldb (byte 12 20) instruction))
           (width (ldb (byte 3 12) instruction))
           (source-register (ldb (byte 5 16) instruction))
           (destination-register (ldb (byte 5 7) instruction)))
       (execute-load-instruction
        width offset
        source-register destination-register)))
    (#b0110011
     (let ((func-7 (ldb (byte 7 25) instruction))
           (func-3 (ldb (byte 3 12) instruction))
           (source-register-1 (ldb (byte 5 16) instruction))
           (source-register-2 (ldb (byte 5 20) instruction))
           (destination-register (ldb (byte 5 7) instruction)))
       (execute-integer-register-register-instruction
        func-7 func-3
        source-register-1 source-register-2 destination-register)))
    (#b0010011
     (let ((raw-immediate-value (ldb (byte 12 20) instruction))
           (func-3 (ldb (byte 3 12) instruction))
           (source-register (ldb (byte 5 16) instruction))
           (destination-register (ldb (byte 5 7) instruction)))
       (execute-integer-register-immediate-instruction
        raw-immediate-value func-3
        source-register destination-register)))))
