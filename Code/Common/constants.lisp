(cl:in-package #:cluster-risc-v-common)

(defconstant +opcode-load+ #b0000011)

(defconstant +opcode-store+ #b0100011)

(defconstant +opcode-integer-register-register+ #b0110011)

(defconstant +opcode-immediate-full-word+ #b0010011)

(defconstant +opcode-immediate-half-word+ #b0011011)
