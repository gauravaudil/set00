;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |05|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;; sq: Number -> Number
;; GIVEN : any number
;; RETURNS : square of that number
; Examples:
; (sq 4) => 16
; (sq 10) => 100
(require rackunit)
(require rackunit/text-ui)
(define (sq nm)
  (* nm nm))
(define-test-suite sq-test
  (check-equal? (sq 4) 16)
  (check-equal? (sq 10) 100))
(run-tests sq-test)