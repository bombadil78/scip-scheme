#lang scheme
(define (create-list from to)
  (cond ((> from to) null)
        (else (cons from (create-list (+ from 1) to)))
        )
  )
(map (lambda (z) z) (map (lambda(x) (lambda(y) (list x y))) (create-list 0 2))