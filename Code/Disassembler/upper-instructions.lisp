(cl:in-package #:cluster-risc-v-disassembler)

(defun disassemble-lui-instruction (raw-immediate-value destination-register)
  (make-instance 'ins:lui-instruction
    :immediate-value (ash (sign-extend-20 raw-immediate-value) 12)
    :destination-register destination-register))

(defun disassemble-auipc-instruction (raw-immediate-value destination-register)
  (make-instance 'ins:auipc-instruction
    :immediate-value
    (+ (ash (sign-extend-20 raw-immediate-value) 12) *pc*)
    :destination-register destination-register))
