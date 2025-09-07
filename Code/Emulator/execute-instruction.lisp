(cl:in-package #:cluster-risc-v-emulator)

(defun execute-instruction (instruction)
  (ecase (ldb (byte 7 0) instruction)
    (#b0000011
     (let ((offset (ldb (byte 12 20) instruction))
           (width (ldb (byte 3 12) instruction))
           (base-register (ldb (byte 5 16) instruction))
           (destination-register (ldb (byte 5 7) instruction)))
       (execute-load-instruction
        width offset
        base-register destination-register)))
    (#b0100011
     (let ((offset (logior (ldb (byte 7 25) instruction)
                           (ldb (byte 5 7) instruction)))
           (width (ldb (byte 3 12) instruction))
           (source-register (ldb (byte 5 20) instruction))
           (base-register (ldb (byte 5 16) instruction)))
       (execute-store-instruction
        width offset
        base-register source-register)))
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
        source-register destination-register)))
    (#b1100111
     (let ((offset (sign-extend-12 (ldb (byte 12 20) instruction)))
           (base-register (ldb (byte 5 16) instruction))
           (destination-register (ldb (byte 5 7) instruction)))
       (assert (zerop (ldb (byte 3 12) instruction)))
       (execute-jalr-instruction
        offset base-register destination-register)))
    (#b1101111
     (let* ((raw-offset (logior (ash (ldb (byte 1 31) instruction) 20)
                                (ash (ldb (byte 8 12) instruction) 12)
                                (ash (ldb (byte 1 20) instruction) 11)
                                (ash (ldb (byte 10 21) instruction) 1)))
            (offset (sign-extend-21 raw-offset))
            (destination-register (ldb (byte 5 7) instruction)))
       (execute-jal-instruction
        offset destination-register)))))
