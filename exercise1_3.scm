(define (square x) (* x x))

(define (sum-of-square x y) (+ (square x)(square y)))

(define (sum-of-square-of-two-larger-numbers-out-of-tree x y z)
  (cond
   ((and (<= x y)(<= x z))(sum-of-square y z))
   ((and (<= y x)(<= y z))(sum-of-square x z))
   ((and (<= z x)(<= z y))(sum-of-square x y))))

