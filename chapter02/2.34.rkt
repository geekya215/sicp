#lang racket

(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (accumulate op init (cdr seq)))))

(define (horner-eval x coefficient-seq)
  (accumulate (lambda (this-coeff higher-terms)
                  (+ this-coeff (* x higher-terms)))
              0
              coefficient-seq))
