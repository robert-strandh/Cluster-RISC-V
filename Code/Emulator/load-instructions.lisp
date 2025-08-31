(cl:in-package #:cluster-risc-v-emulator)

(defun execute-lb-instruction (offset source-register destination-register)
  (let* ((address (+ (integer-register-contents source-register)
                     offset))
         (value (read-byte *client* *default-memory* address)))
    (setf (integer-register-contents destination-register)
          (sign-extend-8 value))))
                 

(defun execute-load-instruction
    (width offset source-register destination-register)
  (ecase width
    (#b000
     (execute-lb-instruction offset source-register destination-register))
    (#b001)
    (#b010)
    (#b011)
    (#b100)
    (#b101)
    (#b110)))
