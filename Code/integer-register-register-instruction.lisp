(cl:in-package #:cluster-risc-v)

(defclass integer-register-register-instruction (register-instruction)
  ())

(defmethod initialize-instance :after
    ((instruction integer-register-register-instruction)
     &key
       source-register-1
       source-register-2
       destination-register)
  (check-type source-register-1 integer-register)
  (check-type source-register-2 integer-register)
  (check-type destination-register integer-register))

(defmethod encode-instructino
    ((instruction integer-register-register-instruction))
  (logior (ash (function-7 instruction) 25)
          (ash (register-number (source-register-2 instruction)) 20)
          (ash (register-number (source-register-1 instruction)) 15)
          (ash (function-3 instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
