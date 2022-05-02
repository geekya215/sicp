#lang racket

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))

(define (fast-expr b p)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n) (iter a (square b) (/ n 2)))
          (else (iter (* a b) b (- n 1)))))
  (iter 1 b p))

(provide fast-expr)
