#lang racket

(define (make-nat n d) 
  (let ([g (gcd (abs n) (abs d))])
    (if (> (* n d) 0)
        (cons (/ (abs n) g) (/ (abs d) g))
        (cons (- (/ (abs n) g)) (/ (abs d) g)))))
