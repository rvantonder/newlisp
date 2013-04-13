(define (palindrome? s)
  (filter (fn (x) (= x (reverse (copy x)))) s))

(dotimes (c (int (read-line)))
  (set 'l (map int (parse (read-line))))
  (set 'palindromes (palindrome? (map string (sequence (first l) (last l)))))
  (set 'squares (filter (fn (x) (= (pow (round (+ (sqrt x) .5))) x))
    (map int palindromes)))

  (set 'fns (palindrome? (map string (map (fn (x) (sqrt x)) squares))))
  ;(println fns))

  (println "Case #" (+ 1 c) ": " (length fns)))

(exit)
