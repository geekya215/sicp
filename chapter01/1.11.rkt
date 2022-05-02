#lang racket

; recursive
(define (fr n)
  (if (< n 3)
      n 
      (+ (fr (- n 1)) (* 2 (fr (- n 2))) (* 3 (fr (- n 3))))))

; iterative
(define (fi n)
  (define (iter a b c n)
    (if (< n 3)
      c
      (iter b c (+ (* 3 a) (* 2 b) c) (- n 1))))
  (iter 0 1 2 n))
