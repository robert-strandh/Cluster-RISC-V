(cl:in-package #:cluster-risc-v-disassembler)

(defun disassemble-integer-register-register-instruction
    (func-7 func-3 source-register-1 source-register-2 destination-register)
  (let ((class-name 
          (ecase func-7
            (#b0000000
             (ecase func-3
               (#b000 'ins:add-instruction)
               (#b001 'ins:sll-instruction)
               (#b010 'ins:slt-instruction)
               (#b011 'ins:sltu-instruction)
               (#b100 'ins:xor-instruction)
               (#b101 'ins:srl-instruction)
               (#b110 'ins:or-instruction)
               (#b111 'ins:and-instruction)))
            (#b0100000
             (ecase func-3
               (#b000 'ins:sub-instruction)
               (#b101 'ins:sra-instruction))))))
    (make-instance 'class-name
      :source-register-1 source-register-1
      :source-register-2 source-register-2
      :destination-register destination-register)))
