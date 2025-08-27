(cl:in-package #:cluster-risc-v-emulator)

(defun execute-addi-instruction
    (immediate-value source-register destination-register)
  (setf (integer-register-contents destination-register)
        (ldb (byte 64 0)
             (+ immediate-value
                (sign-extend
                 (integer-register-contents source-register))))))

(defun execute-integer-register-immediate-instruction
    (raw-immediate-value func-3 source-register destination-register)
  (ecase func-3
    (#b000
     (execute-addi-instruction
      (sign-extend-12 raw-immediate-value)
      source-register destination-register))
    (#b001)
    (#b010)
    (#b011)
    (#b100)
    (#b101)
    (#b110)
    (#b111)))
