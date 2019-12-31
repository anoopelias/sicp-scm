(define (sq x) (* x x))

(define (square-of-two x y z)
  (if (> x y)
      (if (> y z) (+ (sq x) (sq y))
          (+ (sq x) (sq z)))
      (if (> x z) (+ (sq x) (sq y))
          (+ (sq y) (sq z)))))

(square-of-two 1 2 3) ;13
(square-of-two 1 3 2) ;13
(square-of-two 2 1 3) ;13
(square-of-two 2 3 1) ;13
(square-of-two 3 2 1) ;13
(square-of-two 3 1 2) ;13

(square-of-two 1 2 2) ;8
(square-of-two 2 1 2) ;8
(square-of-two 2 2 1) ;8
