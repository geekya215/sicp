#lang racket

(define (make-segment start end)
  (cons start end))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (midpoint-segment seg)
  (let* ([x (+ (x-point (start-segment seg)) 
               (x-point (end-segment seg)))]
         [y (+ (y-point (start-segment seg))
               (y-point (end-segment seg)))])
    (make-point (/ x 2) (/ y 2))))
