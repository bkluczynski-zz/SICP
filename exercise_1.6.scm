(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

Why happens when we attempt to use new-if instead of if to rewrite the
program below?

(define (sqriter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqriter (improve guess x)
		   x)))

In this case, because new-if is a procedure,when being applied by an
applicative order evaluation, it creates an infinite loop when sqriter
is being called recursively. In applicative order evaluation all
subexpressions have to be resolved first, before they will be passed
on to operands.


