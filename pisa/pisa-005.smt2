(declare-const s String)
(declare-const filename_0 String)
(declare-const filename_1 String)
(declare-const filename_2 String)
(declare-const i1 Int)
(declare-const i2 Int)
(declare-const i3 Int)



(assert (= filename_0 s) )

(assert (= i1 (LastIndexof filename_0 "/") ) )

(assert (ite (not (= i1 (- 0 1) ) )
             (and (= i2 (- (Length filename_0) i1) )
                  (= filename_1 (Substring filename_0 i1 i2) )                  
             )
             (= filename_1 filename_0)
        ) 
)

(assert (= i3 (Indexof filename_1 ".") ) )

(assert (ite (not (= i3 (- 0 1) ) )
             (= filename_2 (Substring filename_1 0 i3) )
             (= filename_2 filename_1)
        ) 
)






(check-sat)
(get-model)