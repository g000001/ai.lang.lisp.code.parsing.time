;;;; package.lisp

(cl:in-package :cl-user)

(defpackage :ai.lang.lisp.code.parsing.time
  (:use)
  (:export :parse-time))

(defpackage :ai.lang.lisp.code.parsing.time.internal
  (:use :ai.lang.lisp.code.parsing.time :cl :fiveam)
  (:shadow :special :defconstant))

