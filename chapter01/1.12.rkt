#lang racket

; assume col <= row
(define (pascal-triangle row col)
  (if (or (= col 1) (= row col))
      1
      (+ 
        (pascal-triangle (- row 1) (- col 1))
        (pascal-triangle (- row 1) col))))
