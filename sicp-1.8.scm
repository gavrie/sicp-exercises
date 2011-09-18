(define epsilon 0.001)

(define (square x) (* x x))

(define (cube x) (* (square x) x))

(define (cube-root x)
  
  (define (improve y)
    (/
     (+ (/ x (square y))
        (* 2 y))
     3))
  
  (define (good-enough? guess)
    (< 
     (abs (- (cube guess) x))
     epsilon))
  
  (define (cube-root-iter guess)
    (if (good-enough? guess)
        guess
        (cube-root-iter (improve guess))))
  
  (cube-root-iter 1.0))

(display (cube-root 8.0))
(newline)
