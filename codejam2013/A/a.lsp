(define (checkline l)
  (if 
    (= 4 (apply + (count '("X" "T") l))) (set 'result "X won")
    (= 4 (apply + (count '("O" "T") l))) (set 'result "O won")
    (> (first (count '(".") l) 0))               (set 'result "dots")
                                         (set 'result "none")))

(define (checkdiags g)
  (set 'ldiag (select (flat g) '(0 5 10 15)))
  (set 'rdiag (select (flat g) '(3 6 9 12)))
  (map checkline (list ldiag rdiag)))

(define (checkstate l)
  (if 
    (and 
    (find "X won" l)
    (find "O won" l)) (set 'result "Draw")

    (find "X won" l)  (set 'result "X won")
    (find "O won" l)  (set 'result "O won")
    (find "dots" l)   (set 'result "Game has not completed")
                      (set 'result "Draw")))
 
(set 'c (int (read-line))) 
(dotimes (x c)
  (set 'l '())
  (dotimes (y 4)
    (push (explode (read-line)) l))

  (if (!= (+ 1 x) c) (read-line))
  (set 'res (map checkline l))
  (extend res (checkdiags l))
  (extend res (map checkline (transpose l)))
  (extend res (checkdiags (transpose l)))
  ;(println res)

  (println "Case #" (+ 1 x) ": " (checkstate res)))

(exit)
