;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex156) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;Exercise 155. Design the function colors. It consumes a Russian doll and produces a string of all colors, separate by a comma and a space. Thus our example should produce

(define-struct layer [color doll])

(define an-rd
  (make-layer "yellow" (make-layer "green" "red")))

;RD -> String
;produce all color of RD  
(define (colors an-rd)
  (cond
    [(string? an-rd) an-rd]
    [(layer? an-rd) (string-append (layer-color an-rd) "," (colors (layer-doll an-rd)))]))

;Exercise 156. Design the function inner, which consumes an RD and produces the (color of the) innermost doll. Use DrRacket’s stepper to evaluate (inner rd) for you favorite rd. image

;RN->String
;produce the innermost color of a rd
(define (inner an-rd)
  (cond
    [(string? an-rd) an-rd]
    [(layer? an-rd) (inner (layer-doll an-rd))]))
  