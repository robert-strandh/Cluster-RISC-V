(cl:in-package #:cluster-risc-v)

(defgeneric encode-instruction (instruction))

;;; This variable contains a hash table mapping each instruction to
;;; its relative address.
(defvar *relative-addresses*)

;;; This function takes a list of instructions and produces a vector
;;; of 32-bit unsigned integers.  Except for branch instructions, the
;;; instructions in the list are executed sequentially.
(defun encode-program (instructions)
  (let ((*relative-addresses* (make-hash-table :test #'eq))
        (result (make-array (length instructions)
                            :element-type '(unsigned-byte 32))))
    (loop for instruction in instructions
          for address from 0 by 4
          do (setf (gethash instruction *relative-addresses*)
                   address))
    (loop for instruction in instructions
          for index from 0
          do (setf (aref result index)
                   (encode-instruction instruction)))
    result))

(defgeneric func-7 (instruction))

(defgeneric func-3 (instruction))

