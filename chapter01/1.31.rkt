#lang racket

(define (even? x)
  (= (remainder x 2) 0))

(define (recursive-product term a next b)
  (if (> a b)
      1.0
      (* (term a)
         (recursive-product term (next a) next b))))

(define (iter-product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1.0))

(define (term x)
  (if (even? x) (/ (+ 2 x) (+ 1 x))
                (/ (+ 1 x) (+ 2 x))))

(define (next x) (+ x 1))

(define (pi-recursive n)
  (* 4 (recursive-product term 1 next 1000)))

(define (pi-iter n)
  (* 4 (iter-product term 1 next 1000)))
