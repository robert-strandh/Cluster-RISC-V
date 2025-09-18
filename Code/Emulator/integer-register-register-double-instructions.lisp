(cl:in-package #:cluster-risc-v-emulator)

(defmacro with-three-registers (instruction-name &body body)
  `(let ((source-register-1 (ins:source-register-1 ,instruction-name))
         (source-register-2 (ins:source-register-2 ,instruction-name))
         (destination-register (ins:destination-register ,instruction-name)))
     ,@body))

(defmethod execute-instruction ((instruction ins:add-instruction))
  (with-three-registers instruction
    (setf (integer-register-contents destination-register)
          (ldb (byte 64 0)
               (+ (sign-extend-64
                   (integer-register-contents source-register-1))
                  (sign-extend-64
                   (integer-register-contents source-register-2)))))))

(defmethod execute-instruction ((instruction ins:sub-instruction))
  (with-three-registers instruction
    (setf (integer-register-contents destination-register)
          (ldb (byte 64 0)
               (- (sign-extend-64
                   (integer-register-contents source-register-1))
                  (sign-extend-64
                   (integer-register-contents source-register-2)))))))
