#lang racket

(define (r-last-pair xs)
  (if (null? (cdr xs))
      (car xs)
      (r-last-pair (cdr xs))))

(define (i-last-pair l)
  (define (iter x xs)
    (if (null? xs)
      x
      (iter (car xs) (cdr xs))))
  (iter (car l) (cdr l)))
