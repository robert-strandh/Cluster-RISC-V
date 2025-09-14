(cl:in-package #:cluster-risc-v-disassembler)

(defun sign-extend (size unsigned-byte)
  (if (>= unsigned-byte (expt 2 (1- size)))
      (- unsigned-byte (expt 2 size))
      unsigned-byte))

(defun sign-extend-64 (unsigned-byte)
  (sign-extend 64 unsigned-byte))

(defun sign-extend-12 (unsigned-byte)
  (sign-extend 12 unsigned-byte))

(defun sign-extend-8 (unsigned-byte)
  (sign-extend 8 unsigned-byte))

(defun sign-extend-16 (unsigned-byte)
  (sign-extend 16 unsigned-byte))

(defun sign-extend-20 (unsigned-byte)
  (sign-extend 20 unsigned-byte))

(defun sign-extend-21 (unsigned-byte)
  (sign-extend 21 unsigned-byte))

(defun sign-extend-32 (unsigned-byte)
  (sign-extend 32 unsigned-byte))
