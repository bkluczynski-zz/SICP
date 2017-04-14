(define (sqriter guess x)
  (if (good-enough? guess x)
      guess
      (sqriter (improve guess x)
	       x)))
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqriter 1.0 x))
