(cl:in-package #:cluster-risc-v)

(defclass instruction () ())

(defconstant +opcode-immediate+ #b0010011)

(defclass integer-register-immediate-instruction (immediate-instruction)
  ()
  (:default-initargs :opcode +opcode-immediate+))

(defconstant +opcode-register+ #b0110011)

(defclass integer-register-register-instruction (register-instruction)
  ()
  (:default-initargs :opcode +opcode-register+))

(defconstant +opcode-load+ #b0000011)

(defclass load-instruction (immediate-instruction)
  ()
  (:default-initargs :opcode +opcode-load+))

(defconstant +opcode-store+ #b0100011)

(defclass store-instruction (instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)
   (%source-register-1
    :initarg :source-register-1
    :reader source-register-1)
   (%source-register-2
    :initarg :source-register-2
    :reader source-register-2)
   (%function-3
    :initarg :function-3
    :reader function-3)
   (%opcode
    :initform +opcode-store+)))

(defmethod initialize-instance :after
    ((instruction store-instruction)
     &key
       immediate-value
       function-3)
  (check-type immediate-value (signed-byte 12))
  (check-type function-3 (unsigned-byte 3)))
