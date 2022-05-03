#lang racket

(define (square x)
  (* x x))

(define (r-cont-frac n d k)
  (define (cf i)
    (if (= k i)
        (/ (n k) (d k))
        (/ (n i)
           (+ (d i) (cf (+ i 1))))))
  (cf 1))

(define (i-cont-frac n d k)
  (define (iter r k)
    (if (= k 0)
        r
        (iter (/ (n k) (+ (d k) r)) (- k 1))))
  (iter 0 k))

(define (tan-cf x k)
  (r-cont-frac (lambda (i) (if (= i 1) x (- (square x))))
               (lambda (i) (- (* 2 i) 1))
               k))
