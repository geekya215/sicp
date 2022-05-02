#lang racket

(define (double x) 
  (+ x x))

(define (half x)
  (/ x 2))

(define (even? x)
  (= (remainder x 2) 0))

(define (mul a b)
  (cond ((= b 0) 0)
        ((even? b) (double (mul a (half b))))
        (else (+ a (mul a (- b 1))))))

(provide mul)
