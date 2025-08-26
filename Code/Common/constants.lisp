(cl:in-package #:cluster-risc-v-common)

(defconstant +opcode-load+ #b0000011)

(defconstant +func-3-load-byte+ #b000)

(defconstant +func-3-load-half+ #b001)

(defconstant +func-3-load-word+ #b010)

(defconstant +func-3-load-double+ #b011)

(defconstant +func-3-load-byte-unsigned+ #b100)

(defconstant +func-3-load-half-unsigned+ #b101)

(defconstant +func-3-load-word-unsigned+ #b110)

(defconstant +opcode-store+ #b0100011)

(defconstant +func-3-store-byte #b000)

(defconstant +func-3-store-half #b001)

(defconstant +func-3-store-word #b010)

(defconstant +func-3-store-double #b011)

(defconstant +opcode-integer-register-register-double+ #b0110011)

(defconstant +func-3-add+ #b000)

(defconstant +func-7-add+ #b0000000)

(defconstant +func-3-sub+ #b000)

(defconstant +func-7-sub+ #b0100000)

(defconstant +func-3-sll+ #b001)

(defconstant +func-7-sll+ #b0000000)

(defconstant +func-3-slt+ #b010)

(defconstant +func-7-slt+ #b0000000)

(defconstant +func-3-sltu+ #b011)

(defconstant +func-7-sltu+ #b0000000)

(defconstant +func-3-xor+ #b100)

(defconstant +func-7-xor+ #b0000000)

(defconstant +func-3-srl+ #b101)

(defconstant +func-7-srl+ #b0000000)

(defconstant +func-3-sra+ #b101)

(defconstant +func-7-sra+ #b0100000)

(defconstant +func-3-or+ #b110)

(defconstant +func-7-or+ #b0000000)

(defconstant +func-3-and+ #b111)

(defconstant +func-7-and+ #b0000000)

(defconstant +opcode-integer-register-register-word+ #b0111011)

(defconstant +func-3-addw+ #b000)

(defconstant +func-7-addw+ #b0000000)

(defconstant +func-3-subw+ #b000)

(defconstant +func-7-subw+ #b0100000)

(defconstant +func-3-sllw+ #b001)

(defconstant +func-7-sllw+ #b0000000)

(defconstant +func-3-srlw+ #b101)

(defconstant +func-7-srlw+ #b0000000)

(defconstant +func-3-sraw+ #b101)

(defconstant +func-7-sraw+ #b0100000)

(defconstant +opcode-immediate-double+ #b0010011)

(defconstant +func-3-addi+ #b000)

(defconstant +func-3-slli+ #b001)

(defconstant +func-7-slli+ #b0000000)

(defconstant +func-3-slti+ #b010)

(defconstant +func-3-sltiu+ #b011)

(defconstant +func-3-xori+ #b100)

(defconstant +func-3-srli+ #b101)

(defconstant +func-7-srli+ #b0000000)

(defconstant +func-3-srai+ #b101)

(defconstant +func-7-srai+ #b0100000)

(defconstant +func-3-ori+ #b110)

(defconstant +func-3-andi+ #b111)

(defconstant +opcode-immediate-word+ #b0011011)

(defconstant +func-3-addiw+ #b000)

(defconstant +func-3-slliw+ #b001)

(defconstant +func-7-slliw+ #b0000000)

(defconstant +func-3-srliw+ #b101)

(defconstant +func-7-srliw+ #b0000000)

(defconstant +func-3-sraiw+ #b101)

(defconstant +func-7-sraiw+ #b0100000)

(defconstant +opcode-branch+ #b1100011)

(defconstant +func-3-beq+ #b000)

(defconstant +func-3-bne+ #b001)

(defconstant +func-3-blt+ #b100)

(defconstant +func-3-bge+ #b101)

(defconstant +func-3-bltu+ #b110)

(defconstant +func-3-bgeu+ #b111)

(defconstant +opcode-lui+ #b0110111)

(defconstant +opcode-auipc+ #b0010111)

(defconstant +opcode-jalr+ #b1100111)

(defconstant +func-3-jalr+ #b000)

(defconstant +opcode-jal+ #b1101111)
