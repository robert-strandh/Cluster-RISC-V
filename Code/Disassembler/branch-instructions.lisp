(cl:in-package #:cluster-risc-v-disassembler)

(defun disassemble-branch-instruction
    (offset func-3 source-register-1 source-register-2)
  (let ((class-name
          (ecase func-3
            (#b000 'ins:beq-instruction)
            (#b001 'ins:bne-instruction)
            (#b100 'ins:blt-instruction)
            (#b101 'ins:bge-instruction)
            (#b110 'ins:bltu-instruction)
            (#b111 'ins:bgeu-instruction))))
    (make-instance class-name
      :target offset
      :source-register-1 source-register-1
      :source-register-2 source-register-2)))
