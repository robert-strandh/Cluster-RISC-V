(cl:in-package #:cluster-risc-v-disassembler)

(defun disassemble-store-instruction
    (width offset base-register source-register)
  (let ((class-name
          (ecase width
            (#b000 'ins:sb-instruction)
            (#b001 'ins:sh-instruction)
            (#b010 'ins:sw-instruction)
            (#b011 'ins:sd-instruction))))
    (make-instance class-name
      :source-register-1 base-register
      :source-register-2 source-register
      :offset offset)))
