;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define evenNumberDivideHelper
  (lambda (number counter)
    (cond
      ((eq? number counter) '())
      ((eq? (% counter 2) 0)
       (append counter (evenNumberDivideHelper number (+ counter 1))))
      (else (evenNumberDivideHelper number counter)))))


(define evenNumberDivide
  (lambda (number)
    (evenNumberDivideHelper number 0)))