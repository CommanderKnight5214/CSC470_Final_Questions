;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;Question 5
(define keepTheOdds
  (lambda (listOfNumbers)
    (keepTheOddsSeperator (keepTheOddsFlattener listOfNumbers)))) 


(define keepTheOddsFlattener
  (lambda (lst)
    (cond
      ((null? lst) '())
      ((list? (car lst)) (append (KeepTheOddsFlattener (car lst)) (keepTheOddsFlattener (cdr lst))))
      (else (cons (car lst) (KeepTheOddsFlattener (cdr lst)))))))



(define keepTheOddsSeperator
  (lambda (flattened lst)
    (cond
      ((null? lst) '())
      ((eq (/ (car lst) 2) 0)
       (append (car lst) (keepTheOddsSeperator (cdr lst))))
      (else
       (keepTheOddsSeperator (cdr lst))))))



(define listOfNumbers '(1 (3 (4 (5)))))
(keepTheOdds listOfNumbers)