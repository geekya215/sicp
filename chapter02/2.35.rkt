#lang racket

(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (accumulate op init (cdr seq)))))

(define (count-leaves t)
  (accumnulate + 0 (map (lambda (st)
                            (if (pair? st)
                                (count-leaves st)
                                1))
                        t)))
