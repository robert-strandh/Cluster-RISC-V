(cl:in-package #:cluster-risc-v-disassembler)

(defun disassemble-load-instruction
    (width offset base-register destination-register)
  (let ((class-name
          (ecase width
            (#b000 'ins:lb-instruction)
            (#b001 'ins:lh-instruction)
            (#b010 'ins:lw-instruction)
            (#b011 'ins:ld-instruction)
            (#b100 'ins:lbu-instruction)
            (#b101 'ins:lhu-instruction)
            (#b110 'ins lwu-instruction))))
    (make-instance class-name
      :source-register base-register
      :destination-register destination-register
      :offset offset)))
