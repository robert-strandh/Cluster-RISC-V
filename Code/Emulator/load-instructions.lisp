(cl:in-package #:cluster-risc-v-emulator)

(defun execute-lb-instruction (offset source-register destination-register)
  (let* ((address (+ (integer-register-contents source-register)
                     offset))
         (value (read-byte *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          (sign-extend-8 value))))

(defun execute-lbu-instruction (offset source-register destination-register)
  (let* ((address (+ (integer-register-contents source-register)
                     offset))
         (value (read-byte *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          value)))

(defun execute-lh-instruction (offset source-register destination-register)
  (let* ((address (+ (integer-register-contents source-register)
                     offset))
         (value (read-half *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          (sign-extend-16 value))))

(defun execute-lhu-instruction (offset source-register destination-register)
  (let* ((address (+ (integer-register-contents source-register)
                     offset))
         (value (read-half *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          value)))

(defun execute-lw-instruction (offset source-register destination-register)
  (let* ((address (+ (integer-register-contents source-register)
                     offset))
         (value (read-word *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          (sign-extend-32 value))))

(defun execute-lwu-instruction (offset source-register destination-register)
  (let* ((address (+ (integer-register-contents source-register)
                     offset))
         (value (read-word *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          value)))

(defun execute-ld-instruction (offset source-register destination-register)
  (let* ((address (+ (integer-register-contents source-register)
                     offset))
         (value (read-double *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          value)))

(defun execute-load-instruction
    (width offset source-register destination-register)
  (ecase width
    (#b000
     (execute-lb-instruction offset source-register destination-register))
    (#b001
     (execute-lh-instruction offset source-register destination-register))
    (#b010
     (execute-lw-instruction offset source-register destination-register))
    (#b011
     (execute-ld-instruction offset source-register destination-register))
    (#b100
     (execute-lbu-instruction offset source-register destination-register))
    (#b101
     (execute-lhu-instruction offset source-register destination-register))
    (#b110
     (execute-lwu-instruction offset source-register destination-register))))
