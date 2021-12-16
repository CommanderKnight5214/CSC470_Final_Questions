;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define listCounterHelper
  (lambda (lst1 lst2 lst2Duplicate counter)
    (cond
      ((null? (car lst1)) counter)
      ((null? (car lst2)) (listCounterHelper (cdr lst1) lst2Duplicate lst2Duplicate counter))
      ((eq? (car lst1) (car lst2)) (listCounterHelper lst1 (cdr lst2) lst2Duplicate (+ counter 1)
      (else (listCounterHelper lst1 (cdr lst2) lst2Duplicate counter)))))))




(define listCounter
  (lambda (lst1 lst2)
    (listCounterHelper lst1 lst2 lst2 0)))