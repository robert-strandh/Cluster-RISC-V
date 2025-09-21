(cl:in-package #:cluster-risc-v-emulator)

(defmacro with-raw-immediate-value-and-registers (instruction &body body)
  `(let ((immediate-value (ins:immediate-value ,instruction))
         (source-register (ins:source-register ,instruction))
         (destination-register (ins:destination-register ,instruction)))
     ,@body))

(defmethod execute-instruction ((instruction ins:sltiu-instruction))
  (with-raw-immediate-value-and-registers instruction
    (setf (integer-register-contents destination-register)
          (if (< immediate-value
                 (integer-register-contents source-register))
              1 0))))

(defmethod execute-instruction ((instruction ins:sltiu-instruction))
  (with-raw-immediate-value-and-registers instruction
    (setf (integer-register-contents destination-register)
          (logxor immediate-value
                  (integer-register-contents source-register)))))
