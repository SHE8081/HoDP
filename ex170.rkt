;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex170) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/batch-io)
(read-file "ttt.txt")

; String -> String
; produces the content of file f as a string 
;(define (read-file f) ...)
 
; String -> List-of-string
; produces the content of file f as a list of strings, 
; one per line
(define (read-lines f)
  )
 
; String -> List-of-string
; produces the content of file f as a list of strings, 
; one per word
;(define (read-words f) ...)
 
; String -> List-of-list-of-string
; produces the content of file f as a list of list of
; strings, one list per line and one string per word 
;(define (read-words/line f) ...)
 
; All functions that read a file consume the name of a file 
; as a String argument. They assume the specified file 
; exists in the same folder as the program; if not they 
; signal an error.