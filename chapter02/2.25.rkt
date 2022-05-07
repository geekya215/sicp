#lang racket

(define (l1 x)
  (car (cdr (car (cdr (cdr x))))))

(define (l2 x)
  (car (car x)))

(define (l3 x)
  (cadr (cadr (cadr (cadr (cadr (cadr x)))))))

(l1 (list 1 3 (list 5 7) 9))
(l2 (list (list 7)))
(l3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
