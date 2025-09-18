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

(defmethod execute-instruction ((instruction ins:sll-instruction))
  (with-three-registers instruction
    (let ((shift-amount
            (ldb (byte 6 0) (integer-register-contents source-register-2))))
      (setf (integer-register-contents destination-register)
            (ldb (byte 64 0)
                 (ash (integer-register-contents source-register-1)
                      shift-amount))))))

(defmethod execute-instruction ((instruction ins:slt-instruction))
  (with-three-registers instruction
    (setf (integer-register-contents destination-register)
          (if (< (sign-extend-64
                  (integer-register-contents source-register-1))
                 (sign-extend-64
                  (integer-register-contents source-register-2)))
              1 0))))

(defmethod execute-instruction ((instruction ins:sltu-instruction))
  (with-three-registers instruction
    (setf (integer-register-contents destination-register)
          (if (< (integer-register-contents source-register-1)
                 (integer-register-contents source-register-2))
              1 0))))

(defmethod execute-instruction ((instruction ins:xor-instruction))
  (with-three-registers instruction
    (setf (integer-register-contents destination-register)
          (logxor (integer-register-contents source-register-1)
                  (integer-register-contents source-register-2)))))

(defmethod execute-instruction ((instruction ins:srl-instruction))
  (with-three-registers instruction
    (let ((shift-amount
            (ldb (byte 6 0) (integer-register-contents source-register-2))))
      (setf (integer-register-contents destination-register)
            (ldb (byte 64 0)
                 (ash (integer-register-contents source-register-1)
                      shift-amount))))))

(defmethod execute-instruction ((instruction ins:sra-instruction))
  (with-three-registers instruction
    (let ((shift-amount
            (ldb (byte 6 0) (integer-register-contents source-register-2))))
      (setf (integer-register-contents destination-register)
            (ldb (byte 64 0)
                 (ash (sign-extend-64
                       (integer-register-contents source-register-1))
                      shift-amount))))))

(defmethod execute-instruction ((instruction ins:or-instruction))
  (with-three-registers instruction
    (setf (integer-register-contents destination-register)
          (logior (integer-register-contents source-register-1)
                  (integer-register-contents source-register-2)))))
