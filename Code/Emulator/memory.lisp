(cl:in-package #:cluster-risc-v-emulator)

(defparameter *client*)

(defgeneric read-byte (client memory address))

(defun read-half (client memory address)
  (logior (ash (read-byte client memory (+ address 0)) 0)
          (ash (read-byte client memory (+ address 1)) 8)))

(defun read-word (client memory address)
  (logior (ash (read-half client memory (+ address 0)) 0)
          (ash (read-half client memory (+ address 2)) 16)))

(defun read-double (client memory address)
  (logior (ash (read-word client memory (+ address 0)) 0)
          (ash (read-word client memory (+ address 4)) 32)))

;;; We define the default memory as a hash table, because we don't
;;; know a priory what addresses are going to be used or even whether
;;; they represent a dense interval.  Client code with better
;;; knowledge of the addresses will typically supply a better
;;; representation.
(defparameter *default-memory* (make-hash-table :test #'eql))

(defmethod read-byte (client memory address)
  (let ((result (gethash memory address)))
    (check-type result (unsigned-byte 8))))
