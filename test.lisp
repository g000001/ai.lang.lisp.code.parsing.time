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
  (is (multiple-value-bind (s m h d mo y) 
                           (decode-universal-time (get-universal-time) 0)
        (declare (ignore s m h))
        (= (encode-universal-time 0 0 12 d mo y 0)
           (parse-time "noon" :default-zone 0)))))


;;; *EOF* 

