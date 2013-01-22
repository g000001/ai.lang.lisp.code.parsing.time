(cl:in-package :ai.lang.lisp.code.parsing.time.internal)

(def-suite ai.lang.lisp.code.parsing.time)

(in-suite ai.lang.lisp.code.parsing.time)


(test parse-time
  (is (= (parse-time "1900/1/1 00:00:00 gmt")
         0))
  (is (= (parse-time "1900/1/1 00:00:01 gmt")
         1))
  (is (<= (get-universal-time) (parse-time "now") (get-universal-time)))
  (is (= (parse-time "Mon, 1 Jan 1900 00:00:00 0000")
         0))
  (is (= (parse-time "1900/1/1 noon" :default-zone 0)
         (encode-universal-time 0 0 12 1 1 1900 0))))


;;; *EOF* 

