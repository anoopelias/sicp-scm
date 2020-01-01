
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-iter (improve guess x) x)))

(square-iter 1.0 9)

(define (square-iter-new guess x)
  (new-if (good-enough? guess x)
      guess
      (square-iter-new (improve guess x) x)))

(square-iter-new 1.0 9)

