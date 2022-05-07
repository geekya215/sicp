#lang racket

(define (r-reverse l)
  (let* ([x (car l)]
         [xs (cdr l)])
    (if (null? xs)
        x
        (cons (r-reverse xs) x))))

(define (i-reverse l)
  (define (iter x xs)
    (if (null? xs)
        x
        (iter (cons (car xs) x) (cdr xs))))
  (iter '() l))
