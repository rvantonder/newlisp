;echo "<html><p>" > /tmp/a.out
;#sudo iptables -L -v | awk '/blank_chain.*a/ {print $2}' >> /tmp/a.out
;sudo iptables -L -v | awk '/blank_chain.*a/ {print}' >> /tmp/a.out
;echo "</p></html>" >> /tmp/a.out
;/usr/bin/scp -i /home/rai/.ssh/id_rsa_narga /tmp/a.out rvantonder@star.sun.ac.za:~/public_html/bandwidth.html


(set 'out (join (exec "sudo iptables -L -v") "</p>\n<p>"))
(println out)
(write-file "/tmp/a.out" (append "<html><p>" out "</p></html>"))

(exit)
