(define (cube-iter guess x)
  (if (cube-good-enough? guess x)
      guess
      (cube-iter (cube-improve guess x)
		 x)))
(define (cube-improve guess x)
  (cube-average guess (/ x (square guess)) guess))

(define (cube-average x y z)
  (/ (+ x y z) 3))

(define (cube-good-enough? guess x)
  (< (abs (/ (- (cube-improve guess x) guess)
	     guess))
     0.001))

(define (cube-root x)
  (cube-iter 1.0 x))

