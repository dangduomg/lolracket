#lang racket

; lolracket language

(provide #%module-begin #%datum #%app #%top #%top-interaction
         win fail im-in-yr
         not let newline
         (rename-out [display visible]
                     [require can-has?]
                     [define i-has-a]
                     [read gimmeh]
                     [+ sum]
                     [- diff]
                     [* produkt]
                     [/ quoshunt]
                     [modulo mod]
                     [expt powr]
                     [max biggr]
                     [min smallr]
                     [equal? saem?]
                     [eqv? very-saem?]
                     [eq? supr-saem?]
                     [= saem-numbr?]
                     [> biggr-than?]
                     [>= biggr-than-or-saem?]
                     [< smallr-than?]
                     [<= smallr-than-or-saem?]
                     [and both]
                     [or either]
                     [if o-rly?]
                     [let* let-starr]
                     [letrec let-recurzn]
                     [begin pls-do]
                     [lambda funcshun]
                     [cond wut-if?]
                     [match wtf-is]))

(define win #t)
(define fail #f)

(define-syntax im-in-yr
  (syntax-rules ()
    [(_ loop #:wile cond body ...)
     (let loop ()
       (when cond
         body ...
         (loop)))]
    [(_ loop #:for i #:from start #:too stop #:bai step body ...)
     (let loop ([i start])
       (when (< i stop)
         body ...
         (loop (+ i step))))]))