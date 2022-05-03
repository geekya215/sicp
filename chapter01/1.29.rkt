#lang racket

(define (even? n)
  (= (remainder n 2) 0))

(define (cube x)
  (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpson-integral f a b n)

  (define h (/ (- b a) n))

  (define (fact x)
    (cond ((or (= x 1) (= x n)) 1)
          ((even? x) 2)
          (else 4)))

  (define (y x)
    (f (+ a (* x h))))

  (define (next x) (+ x 1))

  (define (term x)
    (* (fact x) (y x)))

  (* (/ h 3.0) (sum term 0 next n)))
