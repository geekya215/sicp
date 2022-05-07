#lang racket

(define (square-tree-n tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (* tree tree))
        (else (cons (square-tree-n (car tree))
                    (square-tree-n (cdr tree))))))

(define (square-tree-m tree)
  (map (lambda (sub-tree) 
         (if (pair? sub-tree)
             (square-tree-m sub-tree)
             (* sub-tree sub-tree)))
       tree))
