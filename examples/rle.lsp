(set 'result '())
(define (rle s)
  (set 's (explode s))
  (set 'prev "'")
  (set 'current (pop s))
  (set 'temp (list current 1))
  (until (empty? s)
    (set 'prev current)
    (set 'current (pop s))
    (if (= prev current)
      (inc (temp 1))
      (begin ; else
        (push temp result -1)
        (set 'temp (list current 1)))))
    ;(println "prev " prev " current " current " temp " temp))
  (push temp result -1))
  
(set 'start "1")

(dotimes (i 10)
  (set 'q (join (map string (flat (map reverse (rle start)))) ""))
  (println q)
  (set 'start q)
  (set 'result '())) 

(exit)
    
