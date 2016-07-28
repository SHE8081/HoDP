;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex166) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;Exercise 166. The wage*.v2 function consumes a list of work records and produces a list of numbers. Of course, functions may also produce lists of structures.

;Develop a data representation for pay checks. Assume that a pay check contains two pieces of information: the name of the employee and an amount. Then design the function wage*.v3. It consumes a list of work records and computes a list of (representations of) pay checks from it, one per work record.

(define-struct work [employee rate hours])
; Work is a structure: (make-work String Number Number). 
; interpretation (make-work n r h) combines the name (n) 
; with the pay rate (r) and the number of hours (h) worked.


(define-struct pay [name amount])
;name is name of emploree, amount is the aomunt of pay

;Low-> List-of-Pay
 (check-expect (wage*.v3 (cons (make-work "Robby" 11.95 39) '()))
               (cons (make-pay "Robby" (* 11.95 39)) '()))

(define (wage*.v3 an-low)
  (cond
    [(empty? an-low) '()]
    [(cons? an-low) (cons (wage.v3 (first an-low))
                          (wage*.v3 (rest an-low)))]))
;work->play
;compute the pay for given work 
(define (wage.v3 w)
  (make-pay (work-employee w) (* (work-rate w) (work-hours w))))
