#lang scheme
(define (int f a b n)
  (define (h)
    (/ (- b a) n)
    )
  (define (yk k)
    (f (+ a (* k (h))))
    )
  (define (fact k)
    (cond ((= 0 k) 1)
          ((= n k) 1)
          ((even? k) 2)
          (else 4)
          )
    )
  (define (int-iter k sum)
    (cond ((> k n) sum)
          (else (int-iter (+ k 1) (+ sum (* (/ (h) 3) (* (fact k) (yk k))))))
          )
    )
  (int-iter 0 0)
  )
(define (cube x)
  (* x x x)
  )
(define (square x)
  (* x x)
  )
(define (const x)
  x
  )
(int cube 0 1 1000)
(int square 0 1 1000)
(int const 0 1 1000)
(int cube 1 2 1000)