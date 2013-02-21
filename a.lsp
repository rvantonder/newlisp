;(set 'data "awwwwwwwwwwwwwwwwwaccczzzzzwwwwwccbbbb")
;(define d:d)
;(map (fn (x) (d x (inc (d x)))) (explode data))
;(reverse (sort (map (fn (x) (rotate x)) (d))))


;(count (explode "alpha") (explode "str"))

(define (g s)
(set 'freq (sort 
	(count 
		(map char (sequence (char "a") (char "z"))) 
		(explode s))))
(apply + (map * freq (sequence 1 26))))

(while (read-line)
	(if (> $idx 0)
	(println "Case #" $idx ":" (g (lower-case (current-line))))))
	


;(g "aaab")
(exit)
;(println freq)


;(map (fn (x y) (+ x y)) '(1 2 3) '(2 3 4))
;(map + '(1 2 3) '(2 3 4))
