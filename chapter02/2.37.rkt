#lang racket

(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (accumulate op init (cdr seq)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))

(define (dot-product v w)
  accumulate + 0 (map * v w))

(define (matrix-*-vector m v)
  (map (lambda (t) (accumulate +
                               0 
                               (dot-product t v)))
                    m))

(define (transpose m)
  (accumulate-n cons '() m))

(define (matrix-*-matrix m n)
  (let ([cols (transpose n)])
    (map (lambda (t) (matrix-*-vector cols t)) m)))
