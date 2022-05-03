#lang racket

(define (r-accumulate combinator null-value term a next b)
  (if (> a b)
    null-value
    (combinator (term a)
                (r-accumulate combinator null-value term (next a) next b))))

(define (i-accumulate combinator null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combinator (term a) result))))
    (iter a null-value))

(define (sum term a next b)
  (r-accumulate + 0 term a next b))

(define (product term a next b)
  (r-accumulate * 1 term a next b))
