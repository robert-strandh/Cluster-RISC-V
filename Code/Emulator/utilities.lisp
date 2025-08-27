(cl:in-package #:cluster-risc-v-emulator)

;;; Take a 64-bit unsigned integer and consider the topmost bit as a
;;; sign bit.  According to the value of the sign bit return a
;;; positive or a negative number that is represented by the unsigned
;;; integer.
(defun sign-extend (unsigned-byte)
  (if (>= unsigned-byte #.(expt 2 63))
      (- unsigned-byte #.(expt 2 64))
      unsigned-byte))

(defun sign-extend-12 (raw-immediate-value)
  (if (>= raw-immediate-value #.(expt 2 11))
      (- raw-immediate-value #.(expt 2 12))
      raw-immediate-value))
