#lang scheme
(define (reverse l)
  (cond ((empty? l) l)
        (else (append (reverse (cdr l)) (list (car l))))
        )
  )
(define x (list 1 2 3 4 5))
(reverse x)