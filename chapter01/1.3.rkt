#lang racket

(define (square x) (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(define (max x y)
  (if (> x y)
    x
    y))

(define (min x y)
  (if (< x y)
    x
    y))

(define (two-bigger-sum x y z)
  (sum_of_square (max x y)
                 (max (min x y) z)))
