(define (square x) 
  (* x x))

(define (sum-of-squares x y) 
  (+ (square x) (square y)))

(define (max2 a b) 
  (if (> a b) a b))

(define (min2 a b) 
  (if (< a b) a b))

(define (max3 a b c) 
  (max2 
   (max2 a b) c))

(define (mid3 a b c) 
  (min2 
   (max2 a b) c))

(define (f a b c) 
  (sum-of-squares 
   (max3 a b c) 
   (mid3 a b c)))
   

(display (f 3 4 5))
(newline)
