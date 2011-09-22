(define number 27)

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(define (f2 n)
  (f-iter 0 1 2 n))

(define (f-iter a b c count)
  (cond ((< count 1) count)
        ((= count 2) c)
        (else (f-iter b
                      c
                      (+ c (* b 2) (* 3 a))
                      (- count 1)))))

(display (f2 number))
(newline)
(display (f number))
(newline)
