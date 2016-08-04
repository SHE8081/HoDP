;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex240) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
;Exercise 240. Design fold2, which is the abstraction of the following two functions:

; [List-of Number] -> Number
(define (product l)
  (cond
    [(empty? l) 1]
    [else
     (* (first l)
        (product (rest l)))]))
	
	
; [List-of Posn] -> Image
(define (image* l)
  (cond
    [(empty? l) emt]
    [else
     (place-dot (first l)
                (image* (rest l)))]))
 
; Posn Image -> Image 
(define (place-dot p img)
  (place-image dot
               (posn-x p) (posn-y p)
               img))
 
; graphical constants:    
(define emt (empty-scene 100 100))
(define dot (circle 3 "solid" "red"))

;List-of-X->X
(define (fold2 l f)
  (cond
    [(empty? l) (default l) ]
    [else
     (f (first l) (fold2 (rest l)))]))


(define (default l)
  (