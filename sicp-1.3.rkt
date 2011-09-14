#lang r5rs

(define (square x) 
  (* x x))

(define (sum-of-squares x y) 
  (+ (square x) (square y)))

(define (max a b) 
  (if (> a b) a b))

(define (min a b) 
  (if (< a b) a b))

(define (max3 a b c) 
  (max 
   (max a b) c))

(define (mid3 a b c) 
  (min 
   (max a b) c))

(define (f a b c) 
  (sum-of-squares 
   (max3 a b c) 
   (mid3 a b c)))
   