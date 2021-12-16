;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define primeNumberPredicateHelper
  (lambda (number counter number1 number2 identifier)
    (cond
      ((eq? number counter) "Your Number is not a Prime Number")
      ((eq? identifier 1) "Your Number is a Prime Number")
      ((eq? (% counter 2) 0) 



(define primeNumberPredicate
  (lambda (number)
    (primeNumberPredicateHelper number 0 0 0 1)