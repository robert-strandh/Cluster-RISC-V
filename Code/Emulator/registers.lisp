(cl:in-package #:cluster-risc-v-emulator)

(defparameter *integer-registers*
  (make-array 32 :element-type '(unsigned-byte 64)))

(defparameter *pc* 0)

(defun integer-register-contents (register-number)
  (if (zerop register-number)
      0
      (svref *integer-registers* register-number)))

(defun (setf integer-register-contents) (value register-number)
  (if (zerop register-number)
      nil
      (setf (svref *integer-registers* register-number) value)))
