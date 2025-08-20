(cl:in-package #:cluster-risc-v)

(defclass upper-instruction (instruction)
  ((%immediate-value
    :initarg :immediate-value
    :reader immediate-value)
   (%destination-register
    :initarg :destination-register
    :reader destination-register)))

(defmethod initialize-instance :after
    ((instruction upper-instruction)
     &key
       immediate-value
       destination-register)
  (check-type destination-register integer-register)
  (check-type immediate-value (signed-byte 32))
  (assert (zerop (logand immediate-value #.(1- (expt 2 12))))))

(defmethod encode-instruction ((instruction upper-instruction))
  (logior (ash (immediate-value instruction) 12)
          (ash (register-number (destination-register inst
