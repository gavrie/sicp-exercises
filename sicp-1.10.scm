; Ackermann's function

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 2 4)
(A 1 (A 2 3))
(A 1 (A 1 (A 2 2)))
(A 1 (A 1 (A 1 (A 2 1))))
(A 1 (A 1 (A 1 2)))
(A 1 (A 1 (A 0 (A 1 1))))
(A 1 (A 1 (A 0 2)))
(A 1 (A 1 4))
(A 1 (A 1 (A 0 3)))
(A 1 (A 1 6))
(A 1 (A 0 (A 1 5))
...?

(A 1 10)
(A 0 (A 1 9))
(* 2 (A 1 9))
(* 2 (A 0 (A 1 8)))
(* 2 (A 0 (A 0 (A 1 7))))
(* 2 (A 0 (A 0 (A 0 (A 1 6)))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
(* 2 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))
(* 2 (A 0 (A 0 (A 0 (A 0 32)))))
(* 2 (A 0 (A 0 (A 0 64))))
(* 2 (A 0 (A 0 128)))
(* 2 (A 0 256))
(* 2 512)
1024
