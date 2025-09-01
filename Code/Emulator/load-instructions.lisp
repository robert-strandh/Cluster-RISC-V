(cl:in-package #:cluster-risc-v-emulator)

(defun execute-lb-instruction (address destination-register)
  (let ((value (read-byte *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          (sign-extend-8 value))))

(defun execute-lbu-instruction (address destination-register)
  (let ((value (read-byte *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          value)))

(defun execute-lh-instruction (address destination-register)
  (let ((value (read-half *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          (sign-extend-16 value))))

(defun execute-lhu-instruction (address destination-register)
  (let ((value (read-half *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          value)))

(defun execute-lw-instruction (address destination-register)
  (let ((value (read-word *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          (sign-extend-32 value))))

(defun execute-lwu-instruction (address destination-register)
  (let ((value (read-word *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          value)))

(defun execute-ld-instruction (address destination-register)
  (let ((value (read-double *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          value)))

(defun execute-load-instruction
    (width offset base-register destination-register)
  (let ((address (+ (integer-register-contents base-register) offset)))
    (ecase width
      (#b000
       (execute-lb-instruction address destination-register))
      (#b001
       (execute-lh-instruction address destination-register))
      (#b010
       (execute-lw-instruction address destination-register))
      (#b011
       (execute-ld-instruction address destination-register))
      (#b100
       (execute-lbu-instruction address destination-register))
      (#b101
       (execute-lhu-instruction address destination-register))
      (#b110
       (execute-lwu-instruction address destination-register)))))
