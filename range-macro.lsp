(define-macro (range)
	(case (length (args))
		(1 (sequence 0 (dec (first (args)))))
		(2 (sequence (first (args)) (dec (last (args)))))))

(println (range 10))
(exit)
