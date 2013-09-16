;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |06|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;quad Number Number Number -> Number
;GIVEN : three numbers to calculate the root
;RETURNS : two roots of that number
;Examples:
;(quad 2 4 2) => -1
;(quad 1 -8 16) => 4
(require rackunit)
(require rackunit/text-ui)
(define (quad nm1 nm2 nm3)
  (/ (- (sqrt(- (sqr nm2) (* 4 nm1 nm3))) nm2) (* 2 nm1)))
  (define-test-suite quad-test 
    (check-equal? (quad 2 4 2) -1)
    (check-equal? (quad 1 -6 9) 3)
    )
  (run-tests quad-test)