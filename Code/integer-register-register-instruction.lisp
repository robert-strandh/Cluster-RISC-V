(cl:in-package #:cluster-risc-v)

(defconstant +integer-register-register-opcode+ #b0110011)

(defclass integer-register-register-instruction (register-instruction)
  ()
  (:default-initargs :opcode +integer-register-register-opcode+))

(defmethod encode ((instruction integer-register-register-instruction))
  (logior (ash (function-7 instruction) 25)
          (ash (register-number (source-register-2 instruction)) 20)
          (ash (register-number (source-register-1 instruction)) 15)
          (ash (function-3 instruction) 12)
          (ash (register-number (destination-register instruction)) 7)
          (opcode instruction)))
