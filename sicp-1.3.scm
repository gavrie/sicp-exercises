(define (square x) 
  (* x x))

(define (sum-of-squares x y) 
  (+ (square x) (square y)))

(define (bigger a b) (if (> a b) a b))

(define (smaller a b) (if (< a b) a b))

(define (larger-sum-of-squares a b c)
  (sum-of-squares
    (bigger a b)
    (bigger (smaller a b) c)))

(display (larger-sum-of-squares 3 4 5)) (newline)
(display (larger-sum-of-squares 3 5 4)) (newline)
(display (larger-sum-of-squares 4 3 5)) (newline)
(display (larger-sum-of-squares 4 5 3)) (newline)
(display (larger-sum-of-squares 5 3 4)) (newline)
(display (larger-sum-of-squares 5 4 3)) (newline)
