(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x)
  (* x x))

(define (change x y)
  (/ (abs (- x y)) x))

(define (good-enough? guess x)
  (< (change guess (improve guess x)) 0.001))

(define (square-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-iter (improve guess x) x)))

(square-iter 1.0 9)
(square-iter 1.0 0.00003)
(square-iter 1.0 43243143143141414343432431414341413431441343)

