(cl:in-package #:cluster-risc-v-common)

(defconstant +opcode-load+ #b0000011)

(defconstant +func3-load-byte+ #b000)

(defconstant +func3-load-half+ #b001)

(defconstant +func3-load-word+ #b010)

(defconstant +func3-load-double+ #b011)

(defconstant +func3-load-byte-unsigned+ #b100)

(defconstant +func3-load-half-unsigned+ #b101)

(defconstant +func3-load-word-unsigned+ #b110)

(defconstant +opcode-store+ #b0100011)

(defconstant +func-3-store-byte #b000)

(defconstant +func-3-store-half #b001)

(defconstant +func-3-store-word #b010)

(defconstant +func-3-store-double #b011)

(defconstant +opcode-integer-register-register+ #b0110011)

(defconstant +opcode-immediate-double-word+ #b0010011)

(defconstant +opcode-immediate-word+ #b0011011)

(defconstant +opcode-branch+ #b1100011)
