(cl:in-package #:cluster-risc-v-emulator)

(defmacro with-raw-immediate-value-and-registers (instruction &body body)
  `(let ((immediate-value (ins:immediate-value ,instruction))
         (source-register (ins:source-register ,instruction))
         (destination-register (ins:destination-register ,instruction)))
     ,@body))
