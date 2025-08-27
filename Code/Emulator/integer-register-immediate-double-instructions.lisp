(cl:in-package #:cluster-risc-v-emulator)

(defun execute-addi-instruction
    (immediate-value source-register destination-register)
  (setf (integer-register-contents destination-register)
        (ldb (byte 64 0)
             (+ immediate-value
                (sign-extend
                 (integer-register-contents source-register))))))

(defun execute-slli-instruction
    (shift-amount source-register destination-register)
  (setf (integer-register-contents destination-register)
        (ldb (byte 64 0)
             (ash (integer-register-contents source-register)
                  shift-amount))))

(defun execute-integer-register-immediate-instruction
    (raw-immediate-value func-3 source-register destination-register)
  (ecase func-3
    (#b000
     (execute-addi-instruction
      (sign-extend-12 raw-immediate-value)
      source-register destination-register))
    (#b001
     (execute-slli-instruction
      (ldb (byte 6 0) raw-immediate-value)
      source-register destination-register))
    (#b010)
    (#b011)
    (#b100)
    (#b101)
    (#b110)
    (#b111)))
