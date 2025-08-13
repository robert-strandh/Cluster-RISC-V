(cl:in-package #:cluster-risc-v-common)

(defconstant +opcode-load+ #b0000011)

(defconstant +opcode-store+ #b0100011)

(defconstant +opcode-integer-register-register+ #b0110011)

(defconstant +opcode-immediate-double-word+ #b0010011)

(defconstant +opcode-immediate-word+ #b0011011)

(defconstant +opcode-branch+ #b1100011)
