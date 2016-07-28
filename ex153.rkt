;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex153) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
;Exercise 154. The goal of this exercise is to visualizes the result of a 1968-style European student riot. Here is the rough idea. A small group of students meets to make paint-filled balloons, enters some lecture hall and randomly throws the balloons at the attendees. Your world program displays how the balloons color the seats in the lecture hall.

;Use the two functions from exercise 153 to create a rectangle of 8 by 18 squares, each of which has size 10 by 10. Place it in an empty-scene of the same size. This image is your lecture hall.

;Design add-balloons. The function consumes a list of Posn whose coordinates fit into the dimensions of the lecture hall. It produces an image of the lecture hall with red dots added as specified by the Posns.
;some constant of image
(define SIZE 10)
(define WIDTH 80)
(define LENGTH 180)
(define scene (empty-scene WIDTH LENGTH))
(define image (square SIZE "outline" "black"))
(define ballon (circle 2 "solid" "red"))

;N image->image
;define N*image of col
(define (col n image)
  (cond
    [(= n 1) image]
    [else (above image (col (sub1 n) image))]))


;n image->n*image of row

(define (row n image)
  (cond
    [(= n 1) image]
    [else (beside image (row (sub1 n) image))]))

;image, image -> image
;using 18*8 of iamge form a lecture hall
(define (hall col row colnum rownum)
  (col colnum
       (row rownum image)))  

(define (draw-hall hall scene)
  (overlay (hall col row 18 8) scene))

(define lecture-hall
         (draw-hall hall scene))

;struct -> image
;produce an image of the lecture hall with red dots as specified by the Posns
(define (add-ballons positions image)
  (cond
    [(empty? (rest positions))
    (add-ballon (first positions) image)]
    [else (add-ballons (rest positions) (add-ballon (first positions) image))]))


;struct, image -> image
;produce an image wiht a red ballon on position
(define (add-ballon position image)
  (place-image ballon (posn-x position) (posn-y position) image))

;N->cons
;define n positions with random
(define (random-pos n)
  (cond
    [(= 0 n) '()]
    [else (cons (make-posn(random 80) (random 180)) (random-pos
                                                     (sub1 n)))]))

(define (main n)
  (add-ballons (random-pos n) lecture-hall))

(module myhtdp myhtdp
  (provide add-ballon))