#lang racket

(define (cons x y)
    (* (expt 2 x)
       (expt 3 y)))

(define (car r)
  (if (= 0 (remainder r 2))
      (+ 1 (car (/ r 2)))
      0))

(define (cdr r)
  (if (= 0 (remainder r 3))
      (+ 1 (car (/ r 3)))
      0))
