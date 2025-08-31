(cl:in-package #:cluster-risc-v-emulator)

(defun execute-addi-instruction
    (immediate-value source-register destination-register)
  (setf (integer-register-contents destination-register)
        (ldb (byte 64 0)
             (+ immediate-value
                (sign-extend-64
                 (integer-register-contents source-register))))))

(defun execute-slli-instruction
    (shift-amount source-register destination-register)
  (setf (integer-register-contents destination-register)
        (ldb (byte 64 0)
             (ash (integer-register-contents source-register)
                  shift-amount))))

(defun execute-slti-instruction
    (immediate-value source-register destination-register)
  (setf (integer-register-contents destination-register)
        (if (< immediate-value
               (sign-extend-64 (integer-register-contents source-register)))
            1 0)))

(defun execute-sltiu-instruction
    (immediate-value source-register destination-register)
  (setf (integer-register-contents destination-register)
        (if (< immediate-value
               (integer-register-contents source-register))
            1 0)))

(defun execute-xori-instruction
    (immediate-value source-register destination-register)
  (setf (integer-register-contents destination-register)
        (logxor immediate-value
                (integer-register-contents source-register))))

(defun execute-srli-instruction
    (shift-amount source-register destination-register)
  (setf (integer-register-contents destination-register)
        (ash (integer-register-contents source-register)
             (- shift-amount))))

(defun execute-srai-instruction
    (shift-amount source-register destination-register)
  (setf (integer-register-contents destination-register)
        (ldb (byte 64 0)
             (ash (sign-extend-64 (integer-register-contents source-register))
                  (- shift-amount)))))

(defun execute-ori-instruction
    (immediate-value source-register destination-register)
  (setf (integer-register-contents destination-register)
        (logior immediate-value
                (integer-register-contents source-register))))

(defun execute-andi-instruction
    (immediate-value source-register destination-register)
  (setf (integer-register-contents destination-register)
        (logand immediate-value
                (integer-register-contents source-register))))

(defun execute-integer-register-immediate-instruction
    (raw-immediate-value func-3 source-register destination-register)
  (ecase func-3
    (#b000
     (execute-addi-instruction
      (sign-extend-12 raw-immediate-value)
      source-register destination-register))
    (#b001
     (ecase (ldb (byte 6 6) raw-immediate-value)
       (#b000000
        (execute-slli-instruction
         (ldb (byte 6 0) raw-immediate-value)
         source-register destination-register))))
    (#b010
     (execute-slti-instruction
      (sign-extend-12 raw-immediate-value)
      source-register destination-register))
    (#b011
     (execute-sltiu-instruction
      raw-immediate-value
      source-register destination-register))
    (#b100
     (execute-xori-instruction
      raw-immediate-value
      source-register destination-register))
    (#b101
     (ecase (ldb (byte 6 6) raw-immediate-value)
       (#b000000
        (execute-srli-instruction
         (ldb (byte 6 0) raw-immediate-value)
         source-register destination-register))
       (#b010000
        (execute-srai-instruction
         (ldb (byte 6 0) raw-immediate-value)
         source-register destination-register))))
    (#b110
     (execute-ori-instruction
      raw-immediate-value
      source-register destination-register))
    (#b111
     (execute-andi-instruction
      raw-immediate-value
      source-register destination-register))))
