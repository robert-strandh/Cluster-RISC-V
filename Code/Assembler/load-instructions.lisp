(cl:in-package #:cluster-risc-v-assembler)

(defgeneric width (instruction))

(defmethod opcode ((instruction ins:load-instruction))
  com:+opcode-load+)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun integer-log (n)
    (integer-length (1- n))))

(defmethod encode-instruction ((instruction ins:load-instruction))
  (logior (ash (logand (ins:offset instruction) #b111111111111) 20)
          (ash (ins:register-number (ins:source-register instruction)) 15)
          (ash (width instruction) 12)
          (ash (ins:register-number (ins:destination-register instruction)) 7)
          (opcode instruction)))

(defmethod width ((instruction ins:ld-instruction))
  #.(integer-log 8))

(defmethod width ((instruction ins:lw-instruction))
  #.(integer-log 4))

(defmethod width ((instruction ins:lh-instruction))
  #.(integer-log 2))
  
(defmethod width ((instruction ins:lb-instruction))
  #.(integer-log 1))
