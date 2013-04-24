(set 'notes '("A" "Asharp" "B" "C" "Csharp" "D" "Dsharp" "E" "F" "Fsharp" "G" "Gsharp"))
;rubberband -p 1 -c0 -P --pitch-hq A.wav A#.wav
;(map (fn (x name) (println (string "rubberband -p " x " -c0 -P --pitch-hq A.wav " name ".wav"))) (sequence 1 11) (rest notes))
(map (fn (x name) (! (string "rubberband -p " x " -c0 -P --pitch-hq A.wav " name ".wav"))) (sequence 1 11) (rest notes))
(exit)
