#lang racket

(define (double x)
  (+ x x))

(define (half x)
  (/ x 2))

(define (even? x)
  (= (remainder x 2) 0))

(define (fast-mul a b)
  (define (iter acc a b)
    (cond ((= b 0) acc)
          ((even? b) (iter acc (double a) (half b)))
          (else (iter (+ a acc) a (- b 1)))))
  (iter 0 a b))

(fast-mul 3 11)
