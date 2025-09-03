(cl:in-package #:cluster-risc-v-emulator)

(defun execute-beq-instruction (offset source-register-1 source-register-2)
  (let ((value1 (integer-register-contents source-register-1))
        (value2 (integer-register-contents source-register-2)))
    (when (= value1 value2)
      (incf *pc* offset))))

(defun execute-bne-instruction (offset source-register-1 source-register-2)
  (let ((value1 (integer-register-contents source-register-1))
        (value2 (integer-register-contents source-register-2)))
    (unless (= value1 value2)
      (incf *pc* offset))))

(defun execute-blt-instruction (offset source-register-1 source-register-2)
  (let ((value1
          (sign-extend-64 (integer-register-contents source-register-1)))
        (value2
          (sign-extend-64 (integer-register-contents source-register-2))))
    (when (< value1 value2)
      (incf *pc* offset))))

(defun execute-bltu-instruction (offset source-register-1 source-register-2)
  (let ((value1 (integer-register-contents source-register-1))
        (value2 (integer-register-contents source-register-2)))
    (when (< value1 value2)
      (incf *pc* offset))))

(defun execute-bge-instruction (offset source-register-1 source-register-2)
  (let ((value1
          (sign-extend-64 (integer-register-contents source-register-1)))
        (value2
          (sign-extend-64 (integer-register-contents source-register-2))))
    (when (>= value1 value2)
      (incf *pc* offset))))

(defun execute-bgeu-instruction (offset source-register-1 source-register-2)
  (let ((value1 (integer-register-contents source-register-1))
        (value2 (integer-register-contents source-register-2)))
    (when (>= value1 value2)
      (incf *pc* offset))))
