(define (p) (p))


(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

The applicative-order evaluation applied to (test 0 (p)) would never
resolve, as (p) is constantly expanded to itself.

(test 0 (p))
(test 0 (p))
(test 0 (p))

However in normal-order evaluation, the situation looks significantly
less daunting.

(test 0 (p))
(if (= 0 0) 0 (p))
(if true 0 (p))
0

This evaluation is alternatively called "fully expand and then
reduce", which is the opposite of "the applicative order".


