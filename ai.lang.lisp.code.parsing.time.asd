;;;; ai.lang.lisp.code.parsing.time.asd -*- Mode: Lisp;-*- 

(cl:in-package :asdf)

(defsystem :ai.lang.lisp.code.parsing.time
  :serial t
  :depends-on (:fiveam)
  :components ((:file "package")
               (:file "ai.lang.lisp.code.parsing.time")
               (:file "test")))

(defmethod perform ((o test-op) (c (eql (find-system :ai.lang.lisp.code.parsing.time))))
  (load-system :ai.lang.lisp.code.parsing.time)
  (or (flet ((_ (pkg sym)
               (intern (symbol-name sym) (find-package pkg))))
         (let ((result (funcall (_ :fiveam :run) (_ :ai.lang.lisp.code.parsing.time.internal :ai.lang.lisp.code.parsing.time))))
           (funcall (_ :fiveam :explain!) result)
           (funcall (_ :fiveam :results-status) result)))
      (error "test-op failed") ))

