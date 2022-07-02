#lang racket/base
(require racket/cmdline
         racket/list
         racket/function
         raco/command-name
         json)

(command-line
 #:program (short-program+command-name)
 #:args ()
 (define matches (regexp-match #px"Total Project Coverage: \\d\\d\\.\\d\\d%"
                               (open-input-file "coverage/index.html")))
 (when (empty? matches)
   (error 'no-matches "please from `raco cover .` first!"))
 (define status (substring ((compose bytes->string/utf-8 car) matches)
                           24 30))
 (define status-number (string->number (substring status 0 5)))
 (with-output-to-file "coverage/badge.json"
   #:exists 'replace
   (thunk (write-json (hasheq 'subject "coverage"
                              'icon "github"
                              'status status
                              'color (cond
                                       [(status-number . >= . 80) "green"]
                                       [(status-number . >= . 50) "yellow"]
                                       [else "red"]))))))
