(cl:in-package #:cluster-risc-v-emulator)

(defmacro with-target-and-source-register-values (instruction &body body)
  `(let* ((target (ins:target instruction))
          (source-register-1 (ins:source-register-1 ,instruction))
         (value-1 (integer-register-contents source-register-1))
          (source-register-2 (ins:source-register-2 ,instruction))
          (value-2 (integer-register-contents source-register-2)))
     ,@body))
