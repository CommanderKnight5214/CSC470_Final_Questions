;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define primeNumber?
  (lambda (number identifier counter)
    (cond
      ((eq? identifier 2) "F")
      ((eq? number counter) "T")
      ((eq? (% number counter) 0) (primeNumberPredicateHelper number (+ identifier 1) (+ counter 1)))
      (else (primeNumberPredicateHelper number identifier (+ counter 1))))))
       



(define primeNumber?
  (lambda (number)
    (primeNumberPredicateHelper number 0 0)




;In Predicate Form, not a function
(primeNumber? 3)