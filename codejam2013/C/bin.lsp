(define (binfind key l mini maxi)
  (println "mini " mini " maxi " maxi " list " l " key " key)
  (if 
    (> mini maxi) nil
    (letn ((mid (/ (+ mini maxi) 2))
           (mth (nth (- mid 1) l)))
         (if
          (> mth key) (binfind key l mini (dec mid))
          (< mth key) (binfind key l (inc mid) maxi)
          (= mth key) mid))))


(set 'l '(0 1 4 385 324 649 256 144 145 121 580 409 576 25 640 265 544 289 180 676 369 169 304 49 436 9 441 36 64 160 196 481 585 484 81 340 625 601 225 100 16 529 361 496 241 400 244 505))
(sort l)

(println (binfind 145 l 0 (length l)))
(exit)
