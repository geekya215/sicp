#lang racket

(define (fold-left op init seq)
  (define (iter acc rest)
    (if (null? rest)
        acc
        (iter (op acc (car rest))
              (cdr rest))))
  (iter init seq))

(define (fold-right op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (fold-right op init (cdr seq)))))

(define (reverse-l seq)
  (fold-left (lambda (x y) (cons y x)) '() seq))

(define (reverse-r seq)
  (fold-right (lambda (x y) (append y (list x))) '() seq))
