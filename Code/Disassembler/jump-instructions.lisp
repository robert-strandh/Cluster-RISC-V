(cl:in-package #:cluster-risc-v-disassembler)

(defun disassemble-jal-instruction (offset destination-register)
  (make-instance 'ins:jal-instruction
    :offset offset
    :destination-register destination-register))

(defun disassemble-jalr-instruction
    (offset base-register destination-register)
  (make-instance 'ins:jalr-instruction
    :offset offset
    :source-register base-register
    :destination-register destination-register))
