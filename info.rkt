#lang info
(define collection "cover-badge")
(define deps '("base"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(dannypsnl))
(define license '(Apache-2.0 OR MIT))

;;; raco command setup
(define raco-commands
  '(("cover-badge" cover-badge/main "generate badge JSON" 30)))
