(define (show-tree dir)
  (dolist (nde (directory dir))
    (if (and (directory? (append dir "/" nde)) 
             (!= nde ".") (!= nde ".."))
        (show-tree (append dir "/" nde))
        (println (append dir "/" nde)))
  )
)


(show-tree ((main-args) 2))

(exit)
