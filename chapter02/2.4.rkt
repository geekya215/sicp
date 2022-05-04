#lang racket

(define (cons-r x y)
  (lambda (m) (m x y)))

(define (cdr-r z)
  (z (lambda (p q) q)))
