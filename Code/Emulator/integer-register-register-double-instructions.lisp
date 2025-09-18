(cl:in-package #:cluster-risc-v-emulator)

(defmacro with-three-registers (instruction-name &body body)
  `(let ((source-register-1 (ins:source-register-1 ,instruction-name))
         (source-register-2 (ins:source-register-2 ,instruction-name))
         (destination-register (ins:destination-register ,instruction-name)))
     ,@body))
