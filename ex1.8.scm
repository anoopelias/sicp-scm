(define (square x)
  (* x x))

(define (improve y x)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (change x y)
  (/ (abs (- x y)) x))

(define (good-enough? guess x)
  (< (change guess (improve guess x)) 0.001))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(cube-iter 1.0 27)
(cube-iter 1.0 512)

