#lang racket

(define (tree-map-n f tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (f tree))
        (else (cons (tree-map-n f (car tree))
                    (tree-map-n f (cdr tree))))))

(define (tree-map-m f tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map-m f sub-tree)
             (f sub-tree)))
       tree))
