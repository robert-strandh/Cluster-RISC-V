(cl:in-package #:cluster-risc-v-emulator)

(defun execute-add-instruction
    (source-register-1 source-register-2 destination-register)
  (setf (integer-register-contents destination-register)
        (ldb (byte 64 0)
             (+ (sign-extend-64
                 (integer-register-contents source-register-1))
                (sign-extend-64
                 (integer-register-contents source-register-2))))))

(defun execute-sub-instruction
    (source-register-1 source-register-2 destination-register)
  (setf (integer-register-contents destination-register)
        (ldb (byte 64 0)
             (- (sign-extend-64
                 (integer-register-contents source-register-1))
                (sign-extend-64
                 (integer-register-contents source-register-2))))))

(defun execute-sll-instruction
    (source-register-1 source-register-2 destination-register)
  (let ((shift-amount
          (ldb (byte 6 0) (integer-register-contents source-register-2))))
    (setf (integer-register-contents destination-register)
          (ldb (byte 64 0)
               (ash (integer-register-contents source-register-1)
                    shift-amount)))))

(defun execute-slt-instruction
    (source-register-1 source-register-2 destination-register)
  (setf (integer-register-contents destination-register)
        (if (< (sign-extend-64 (integer-register-contents source-register-1))
               (sign-extend-64 (integer-register-contents source-register-2)))
            1 0)))

(defun execute-sltu-instruction
    (source-register-1 source-register-2 destination-register)
  (setf (integer-register-contents destination-register)
        (if (< (integer-register-contents source-register-1)
               (integer-register-contents source-register-2))
            1 0)))

(defun execute-xor-instruction
    (source-register-1 source-register-2 destination-register)
  (setf (integer-register-contents destination-register)
        (logxor (integer-register-contents source-register-1)
                (integer-register-contents source-register-2))))

(defun execute-srl-instruction
    (source-register-1 source-register-2 destination-register)
  (let ((shift-amount
          (ldb (byte 6 0) (integer-register-contents source-register-2))))
    (setf (integer-register-contents destination-register)
          (ldb (byte 64 0)
               (ash (integer-register-contents source-register-1)
                    shift-amount)))))

(defun execute-sra-instruction
    (source-register-1 source-register-2 destination-register)
  (let ((shift-amount
          (ldb (byte 6 0) (integer-register-contents source-register-2))))
    (setf (integer-register-contents destination-register)
          (ldb (byte 64 0)
               (ash (sign-extend-64 (integer-register-contents source-register-1))
                    shift-amount)))))

(defun execute-or-instruction
    (source-register-1 source-register-2 destination-register)
  (setf (integer-register-contents destination-register)
        (logior (integer-register-contents source-register-1)
                (integer-register-contents source-register-2))))

(defun execute-and-instruction
    (source-register-1 source-register-2 destination-register)
  (setf (integer-register-contents destination-register)
        (logand (integer-register-contents source-register-1)
                (integer-register-contents source-register-2))))

(defun execute-integer-register-register-instruction
    (func-7 func-3 source-register-1 source-register-2 destination-register)
  (ecase func-7
    (#b0000000
     (ecase func-3
       (#b000
        (execute-add-instruction
          source-register-1 source-register-2 destination-register))
       (#b001
        (execute-sll-instruction
          source-register-1 source-register-2 destination-register))
       (#b010
        (execute-slt-instruction
          source-register-1 source-register-2 destination-register))
       (#b011
        (execute-sltu-instruction
         source-register-1 source-register-2 destination-register))
       (#b100
        (execute-xor-instruction
         source-register-1 source-register-2 destination-register))
       (#b101
        (execute-srl-instruction
         source-register-1 source-register-2 destination-register))
       (#b110
        (execute-or-instruction
         source-register-1 source-register-2 destination-register))
       (#b111
        (execute-and-instruction
         source-register-1 source-register-2 destination-register))))
    (#b0100000
     (ecase func-3
       (#b000
        (execute-sub-instruction
          source-register-1 source-register-2 destination-register))
       (#b101
        (execute-sra-instruction
         source-register-1 source-register-2 destination-register))))))
