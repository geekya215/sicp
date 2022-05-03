#lang racket

(define (filter-accumulate combinator predicate null-value term a next b)
  (if (> a b)
    null-value
    (combinator (if (predicate a) (term a) null-value)
                (filter-accumulate combinator predicate null-value term (next a) next b))))
