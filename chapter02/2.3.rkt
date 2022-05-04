#lang racket

(define (make-rectangle width height)
  (cons width height))

(define (width rectangle)
  (car rectangle))

(define (height rectangle)
  (cdr rectangle))

(define (area rectangle)
  (* (width rectangle) (height rectangle)))

(define (perimeter rectangle)
  (* 2 (+ (width rectangle) (height rectangle))))
