(declare-fun g () String)
(declare-fun h () String)
(declare-fun i () String)
(declare-fun j () String)
(declare-fun w () String)  
(assert (= g (Concat h i)))
(assert (= w (Concat j g)))
(assert (= w "teest"))
(assert (= h "ee"))
(check-sat)