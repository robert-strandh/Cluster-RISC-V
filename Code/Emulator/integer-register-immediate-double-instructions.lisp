(cl:in-package #:cluster-risc-v-emulator)

(defmacro with-raw-immediate-value-and-registers (instruction &body body)
  `(let ((immediate-value (ins:immediate-value ,instruction))
         (source-register (ins:source-register ,instruction))
         (destination-register (ins:destination-register ,instruction)))
     ,@body))

(defmacro with-sign-extended-immediate-value-and-registers
    (instruction &body body)
  `(let* ((immediate-value (ins:immediate-value ,instruction))
          (immediate-value (sign-extend-12 immediate-value))
          (source-register (ins:source-register ,instruction))
          (destination-register (ins:destination-register ,instruction)))
     ,@body))

(defmacro with-shift-amount-and-registers
    (instruction &body body)
  `(let* ((shift-amount (ins:shift-amount ,instruction))
          (source-register (ins:source-register ,instruction))
          (destination-register (ins:destination-register ,instruction)))
     ,@body))

(defmethod execute-instruction ((instruction ins:sltiu-instruction))
  (with-raw-immediate-value-and-registers instruction
    (setf (integer-register-contents destination-register)
          (if (< immediate-value
                 (integer-register-contents source-register))
              1 0))))

(defmethod execute-instruction ((instruction ins:ori-instruction))
  (with-raw-immediate-value-and-registers instruction
    (setf (integer-register-contents destination-register)
          (logior immediate-value
                  (integer-register-contents source-register)))))

(defmethod execute-instruction ((instruction ins:xori-instruction))
  (with-raw-immediate-value-and-registers instruction
    (setf (integer-register-contents destination-register)
          (logxor immediate-value
                  (integer-register-contents source-register)))))

(defmethod execute-instruction ((instruction ins:andi-instruction))
  (with-raw-immediate-value-and-registers instruction
    (setf (integer-register-contents destination-register)
          (logand immediate-value
                  (integer-register-contents source-register)))))

(defmethod execute-instruction ((instruction ins:addi-instruction))
  (with-sign-extended-immediate-value-and-registers instruction
    (setf (integer-register-contents destination-register)
          (ldb (byte 64 0)
               (+ immediate-value
                  (sign-extend-64
                   (integer-register-contents source-register)))))))

(defmethod execute-instruction ((instruction ins:slti-instruction))
  (with-sign-extended-immediate-value-and-registers instruction
    (setf (integer-register-contents destination-register)
          (if (< immediate-value
                 (sign-extend-64
                  (integer-register-contents source-register)))
              1 0))))

(defmethod execute-instruction ((instruction ins:slli-instruction))
  (with-shift-amount-and-registers instruction
    (setf (integer-register-contents destination-register)
          (ldb (byte 64 0)
               (ash (integer-register-contents source-register)
                    shift-amount))))))
