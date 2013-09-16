;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;sum-l Number Number Number -> Number >a b c
;GIVEN three numbers
;RETURN sum of the two largest number
;EXAMPLE:
;(sum-l 1 2 3)=> 5
;(sum-l 2 4 1)=> 6
(require rackunit)
(require rackunit/text-ui)
(define (sum-l a b c)
   (if(or (> a b c) (> b a c)) (+ a b) (if(or (> b c a) (> c b a)) (+ b c)  (+ c a) )))
  
(define-test-suite sum-l-test
  (check-equal? (sum-l 1 2 3) 5)
  (check-equal? (sum-l 10 4 8) 18)
   (check-equal? (sum-l 10 8 4) 18)
  )
(run-tests sum-l-test)