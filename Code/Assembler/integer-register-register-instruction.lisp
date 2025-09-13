(cl:in-package #:cluster-risc-v)

(defmethod encode-instruction
    ((instruction ins:integer-register-register-instruction))
  (logior (ash (func-7 instruction) 25)
          (ash (ins:register-number (ins:source-register-2 instruction)) 20)
          (ash (ins:register-number (ins:source-register-1 instruction)) 15)
          (ash (func-3 instruction) 12)
          (ash (ins:register-number (ins:destination-register instruction)) 7)
          (opcode instruction)))
