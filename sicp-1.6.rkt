#lang r5rs

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x) (* x x))

(define epsilon 1e-9)

(define (good-enough? guess x)
  (< 
   (abs (- (square guess) x))
   epsilon))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

