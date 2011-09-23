(define nil '())

(define (pascal-item row column)
  (cond ((or (< column 1) (> column row)) nil)
        ((or (= column 1) (= column row)) 1)
        (else (+ (pascal-item (- row 1) (- column 1))
                 (pascal-item (- row 1) column)))))

(define (show-triangle max-row)
  (define (show-row row)
    (define (show-item row column)
      (display (pascal-item row column))
      (display " "))
    (define (show-row-iter row max-column current-column)
      (show-item row current-column)
      (if (= current-column max-column) nil
          (show-row-iter row max-column (+ current-column 1))))
    (show-row-iter row row 1)
    (newline))
  (define (show-triangle-iter max-row current-row)
    (show-row current-row)
    (if (= current-row max-row) nil
        (show-triangle-iter max-row (+ current-row 1))))
  (show-triangle-iter max-row 1))

(show-triangle 5)
