#lang racket

(define dx 0.001)

(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx))
                    (f x)
                    (f (+ x dx)))
                  3)))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeat f n)
  (if (= n 1)
      f
      (repeat (compose f f) (- n 1))))

(define (smooth-fun f n)
  ((repeat smooth n) f))
