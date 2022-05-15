#lang racket

(require racket/list)

(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low (enumerate-interval (+ low 1) high))))

(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (accumulate op init (cdr seq)))))

(define (flatmap f seq)
  (accumulate append '() (map f seq)))

(define (safe? k pos)
  (define (check new rest i)
    (if (null? rest)
        #t
        (let ([current (car rest)])
          (if (or (= new current)
                  (= new (+ i current))
                  (= new (- current i)))
              #f
              (check new (cdr rest) (+ i 1))))))
  (check (car pos) (cdr pos) 1))

(define (adjoin-pos new-row k rest-of-queens)
  (cons new-row rest-of-queens))

(define (queens borad-size)
  (define (queen-cols k)
    (if (= k 0)
        '()
        (filter (lambda (pos) (safe? k pos))
                (flatmap
                  (lambda (rest-of-queens)
                           (map (lambda (new-row) 
                                  (adjoin-pos new-row k rest-of-queens))
                                (enumerate-interval 1 borad-size)))
                  (queen-cols (- k 1))))))
  (queen-cols borad-size))

(queens 8)
