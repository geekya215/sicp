#lang racket

(define (make-mobile left right)
  (cons left right))

(define (make-branch len structure)
  (cons len structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-len branch)
  (car branch))

(define (branch-structure branch)
  (cdr branch))

(define (b-weight branch)
  (define b (branch-structure branch))
  (if (pair? b)
      (total-weight b)
      b))

(define (total-weight mobile)
  (+ (b-weight (left-branch mobile))
     (b-weight (right-branch mobile))))
