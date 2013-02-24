(set 'a ((1 1) (2 1 2)))

(dolist (i l) (dolist (j i) (a (string j) (inc (a (string j))))))
