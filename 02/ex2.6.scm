#lang scheme
(define zero
  (lambda (f) (lambda (x) x))
  )
(define one
  (lambda (f) (lambda (x) (f x)))
  )
(define two
  (lambda (f) (lambda (x) (f (f x))))
  )
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x))))
  )
(define (eq v1 v2)
  
  )
(define (plus v1 v2)

  )
