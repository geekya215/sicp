#lang racket

(define (double f)
  (lambda (a) (f (f a))))

(define (inc x)
  (+ 1 x))

(((double (double double)) inc) 5)
