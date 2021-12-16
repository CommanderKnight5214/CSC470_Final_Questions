;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Question 8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define LCExpfunctionHelper
  (lambda (LCExp count)
    (cond
      ((null? LCExp) count)
      ((list? (car lst))
       (cond
       ((list? (cadar lst)) (LCExpfunctionHelper (caddr LCExp) (+ count 1)))
       (else (LCExpfunctionHelper (cdr LCExp) count))))
      (else (LCExpfunctionHelper (cdr LCExp) count)))))

(define LCExpfunction
  (lambda (LCExp)
    (LCExpfunctionHelper LCExp 0)