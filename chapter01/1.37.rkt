#lang racket

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

(r-cont-frac (lambda (i) 1.0)
             (lambda (i) 1.0)
             11)

(i-cont-frac (lambda (i) 1.0)
             (lambda (i) 1.0)
             11)
