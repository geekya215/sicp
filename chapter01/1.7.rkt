#lang racket

(define (abs x)
  (if (> x 0)
    x
    (- x)))

(define (avg x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (avg guess (/ x guess)))

(define (good-enough? new-value old-value)
  (> 0.01 (/ (abs (- new-value old-value))
             old-value)))

(define (sqrt-iter guess x)
  (if (good-enough? (improve guess x) guess)
    (improve guess x)
    (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
