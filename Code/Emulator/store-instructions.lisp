(cl:in-package #:cluster-risc-v-emulator)

(defun execute-sb-instruction (address source-register)
  (let* ((contents (integer-register-contents source-register))
         (value (ldb (byte 8 0) contents)))
    (write-byte *client* *default-memory* address value)))

(defun execute-sh-instruction (address source-register)
  (let* ((contents (integer-register-contents source-register))
         (value (ldb (byte 16 0) contents)))
    (write-half *client* *default-memory* address value)))

(defun execute-sw-instruction (address source-register)
  (let* ((contents (integer-register-contents source-register))
         (value (ldb (byte 32 0) contents)))
    (write-word *client* *default-memory* address value)))

(defun execute-sd-instruction (address source-register)
  (let ((contents (integer-register-contents source-register)))
    (write-double *client* *default-memory* address contents)))

(defun execute-store-instruction
    (width offset base-register source-register)
  (let ((address (+ (integer-register-contents base-register) offset)))
    (ecase width
      (#b000
       (execute-sb-instruction address source-register))
      (#b001
       (execute-sh-instruction address source-register))
      (#b010
       (execute-sw-instruction address source-register))
      (#b011
       (execute-sd-instruction address source-register)))))
