(define epsilon 1e-9)

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (mysqrt x)
  
  (define (improve guess)
    (average guess (/ x guess)))
  
  (define (good-enough? guess)
    (< 
     (abs (- (square guess) x))
     epsilon))
  
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  
  (sqrt-iter 1.0))

(display (mysqrt 9))
(newline)
