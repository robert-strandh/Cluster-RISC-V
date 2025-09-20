(cl:in-package #:cluster-risc-v-emulator)

(defmacro with-target-and-register-values (instruction &body body)
  `(let* ((target (ins:target instruction))
          (source-register-1 (ins:source-register-1 ,instruction))
          (value-1 (integer-register-contents source-register-1))
          (source-register-2 (ins:source-register-2 ,instruction))
          (value-2 (integer-register-contents source-register-2)))
     ,@body))

(defmacro with-target-and-sign-extended-register-values
    (instruction &body body)
  `(let* ((target (ins:target instruction))
          (source-register-1 (ins:source-register-1 ,instruction))
          (value-1 (integer-register-contents source-register-1))
          (value-1 (sign-extend-64 value-1))
          (source-register-2 (ins:source-register-2 ,instruction))
          (value-2 (integer-register-contents source-register-2))
          (value-2 (sign-extend-64 value-2)))
     ,@body))

(defmethod excute-instruction ((instruction ins:beq-instruction))
  (with-target-and-register-values instruction
    (when (= value-1 value-2)
      (setf *pc* target))))

(defmethod excute-instruction ((instruction ins:bne-instruction))
  (with-target-and-register-values instruction
    (unless (= value-1 value-2)
      (setf *pc* target))))

(defmethod excute-instruction ((instruction ins:blt-instruction))
  (with-target-and-sign-extended-register-values instruction
    (when (< value-1 value-2)
      (setf *pc* target))))

(defmethod excute-instruction ((instruction ins:bltu-instruction))
  (with-target-and-register-values instruction
    (when (< value-1 value-2)
      (setf *pc* target))))
