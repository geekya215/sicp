#lang racket

(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (accumulate op init (cdr seq)))))

(define (map p seq)
  (accumulate (lambda (x y) (cons (p x) y)) '() seq))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (len seq)
  (accumulate (lambda (x y) (+ 1 y)) 0 seq))
