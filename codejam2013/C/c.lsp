(define (binfind key l mini maxi)
  (if 
    (> mini maxi) nil
    (letn ((mid (/ (+ mini maxi) 2))
           (mth (nth (- mid 1) l)))
         (if
          (> mth key) (binfind key l mini (dec mid))
          (< mth key) (binfind key l (inc mid) maxi)
          (= mth key) mid))))  

(define (palindrome? s)
  (filter (fn (x) (= x (reverse (copy x)))) s))

(dotimes (c (int (read-line)))
  (set 'fz '(0 1 4 385 324 649 256 144 145 121 580 409 576 25 640 265 544 289 180 676 369 169 304 49 436 9 441 36 64 160 196 481 585 484 81 340 625 601 225 100 16 529 361 496 241 400 244 505))
  (sort fz)

  (println fz)
  (set 'l (map int (parse (read-line))))
  (set 'nums (sequence (first l) (last l)))

  (println (length nums))
  (set 'nums (filter (fn (x) (binfind (% x 720) fz 0 (length fz))) nums))
  (println (length nums))
  ;(println nums)


  (set 'palindromes (palindrome? (map string nums)))
  (set 'squares (filter (fn (x) (= (pow (round (+ (sqrt x) .5))) x))
    (map int palindromes)))

  (set 'fns (palindrome? (map string (map (fn (x) (sqrt x)) squares))))
  ;(println fns))

  (println "Case #" (+ 1 c) ": " (length fns)))
(exit)
