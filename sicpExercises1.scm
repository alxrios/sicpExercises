#lang scheme

;# Chapter 1 exercises:

#| Exercise 1.2:
Translate the following expression into prefix form:
|#

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

;# Decimal form:

(/ (+ 5 4 (- 2 (- 3 (+ 6 0.8))))
   (* 3 (- 6 2) (- 2 7)))

#| Exercise 1.3:
Define a procedure that takes three numbers as arguments and
returns the sum of the squares of the two larger numbers.
|#


(define (exer13 x y z)
  (cond ((and (or (> x y) (= x y)) (or (> y z) (= y z))) (+ (* x x) (* y y)))
        ((and (or (> x y) (= x y)) (or (< y z) (= y z))) (+ (* x x) (* z z)))
        ((and (or (< x y) (= x y)) (or (< x z) (= x z))) (+ (* y y) (* z z)))
        ((and (or (< x y) (= x y)) (or (> x z) (= x z))) (+ (* y y) (* x x)))))


;# Test:
#|
(exer13 5 7 9)
(exer13 5 9 7)
(exer13 7 5 9)
(exer13 7 9 5)
(exer13 9 5 7)
(exer13 9 7 5)
(exer13 7 7 5)
(exer13 5 7 7)
(exer13 7 5 7)
(exer13 7 7 7)
|#


