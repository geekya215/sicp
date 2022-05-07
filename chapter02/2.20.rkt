#lang racket

(define (same-parity x . xs)
  (define mod (remainder x 2))
  (define (iter l result)
    (if (null? l)
        result
        (iter (cdr l) (if (= (remainder (car l) 2) mod)
                          (cons result (car l))
                          result)
      )
    ))
  (iter (cons x xs) '()))

(same-parity 2 3 4 5)
