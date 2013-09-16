;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |04|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; tip : Number Number -> Number
    ; GIVEN: the amount of the bill in dollars and the
    ; percentage of tip
    ; RETURNS: the amount of the tip in dollars.
    ; Examples:
    ; (tip 10 0.15)  => 1.5
    ; (tip 20 0.17)  => 3.4
(require rackunit)
(require rackunit/text-ui)
(define (tip bill tip_per)
                      (* bill tip_per))
(define-test-suite tip-test
  (check-equal? (tip 10 .15) 1.5)
  (check-equal? (tip 20 .17) 3.4)
  )
(run-tests tip-test)
  
