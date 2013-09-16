;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |01|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;Number -> Number
;Given: Leap year
;Return: Number of seconds in a leap year
;Examples:
;(seconds-leap-year DAYS) => 
(define DAYS 366)
(require rackunit)
(require rackunit/text-ui)
(define (seconds-leap-year DAYS)
  (* DAYS 24 60 60))
(define-test-suite seconds-leap-year-test 
  (check-equal? (seconds-leap-year DAYS) 31622400)
    )
(run-tests seconds-leap-year-test)