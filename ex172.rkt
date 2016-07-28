;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex172) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;Exercise 172. Design a program that converts a list of lines into a string. The strings should be separated by blank spaces (" "). The lines should be separated with a newline ("\n").
;Challenge: Remove all extraneous white spaces in your version of the Piet Hein poem. When you are finished with the design of the program, use it like this:
;(write-file "ttt.dat" (collapse (read-words/line "ttt.txt")))
;The two files "ttt.dat" and "ttt.txt" should be identical. image

;list-of-list-string -> list-of-list-string
;interpetation: the strings should be seperated by blank space ("") and the lines should be seperated with a newline ("\n")
;(define (collapse file)

;(write-file "ttt.dat" (read-file "ttt.txt"))

 (read-words/line "ttt.txt")