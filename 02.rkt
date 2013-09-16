;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |02|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;Number -> Number
;Given : Result of (100/3) and (100+3)/(3+3)
;Returns : which is Greater (100/3) or (100+3)/(3+3)
;Examples:
;(test-greater a b) -> a
(require rackunit)
(require rackunit/text-ui)
(define A (/ 100 3))
(define B (/ (+ 100 3) (+ 3 3)))
(define (test-greater A B)
  (cond[(> A B) A]
       [else B])
  )
(define-test-suite test-greater-test
  (check-equal? (test-greater A B) A))
(run-tests test-greater-test)