***********************************************
*                 initGrammar                 *
-----------------------------------------------
Input
$OREXPRESSION = $COMPARAISON | $EXPRESSION $OROP $EXPRESSION 

$EXPRESSION = $OREXPRESSION | $NOTOP $EXPRESSION

$COMPARAISON = $TERM $COMPOP $TERM 

$COMPOP = "F"

$OROP = "or" 

$NOTOP = "not"  

$TERM = $STRING | $QUOTE $TERM $QUOTE 

$STRING = "a"

$QUOTE = "b" 


101 --$OREXPRESSION = $COMPARAISON | $EXPRESSION $OROP $EXPRESSION 
--
106 --$OREXPRESSION-- w. --$COMPARAISON--
106 --$OREXPRESSION-- w. --$EXPRESSION--
106 --$OREXPRESSION-- w. --$OROP--
106 --$OREXPRESSION-- w. --$EXPRESSION--
101 --$EXPRESSION = $OREXPRESSION | $NOTOP $EXPRESSION
--
106 --$EXPRESSION-- w. --$OREXPRESSION--
106 --$EXPRESSION-- w. --$NOTOP--
106 --$EXPRESSION-- w. --$EXPRESSION--
101 --$COMPARAISON = $TERM $COMPOP $TERM 
--
106 --$COMPARAISON-- w. --$TERM--
106 --$COMPARAISON-- w. --$COMPOP--
106 --$COMPARAISON-- w. --$TERM--
101 --$COMPOP = "F"
--
101 --$OROP = "or" 
--
101 --$NOTOP = "not"  
--
101 --$TERM = $STRING | $QUOTE $TERM $QUOTE 
--
106 --$TERM-- w. --$STRING--
106 --$TERM-- w. --$QUOTE--
106 --$TERM-- w. --$TERM--
106 --$TERM-- w. --$QUOTE--
101 --$STRING = "a"
--
101 --$QUOTE = "b" 
--
12 nonTerminalMap: 
 $COMPARAISON: 	 ---$TERM--- ---$COMPOP--- ---$TERM---

 $COMPOP: 	 ---"F"---

 $EXPRESSION: 	 ---$OREXPRESSION---
	 ---$NOTOP--- ---$EXPRESSION---

 $NOTOP: 	 ---"not"---

 $OREXPRESSION: 	 ---$COMPARAISON---
	 ---$EXPRESSION--- ---$OROP--- ---$EXPRESSION---

 $OROP: 	 ---"or"---

 $QUOTE: 	 ---"b"---

 $STRING: 	 ---"a"---

 $TERM: 	 ---$STRING---
	 ---$QUOTE--- ---$TERM--- ---$QUOTE---


$COMPARAISON (2): (3) (6) 
$COMPOP (3): 
$EXPRESSION (1): (0) (1) (5) 
$NOTOP (5): 
$OREXPRESSION (0): (1) (2) (4) 
$OROP (4): 
$QUOTE (8): 
$STRING (7): 
$TERM (6): (6) (7) (8) 
>> 324 Rewrite: $OREXPRESSION
287 before adding an edge
$COMPARAISON

291 adding an edge
--
$COMPARAISON_0_0

287 before adding an edge
$EXPRESSION_0
$OROP
$EXPRESSION_0

291 adding an edge
--
$EXPRESSION_0_0
$OROP_0_0
$EXPRESSION_0_1

287 before adding an edge
$COMPARAISON

291 adding an edge
--
$COMPARAISON_0_0

429 $OREXPRESSION_0_0: 
---
$COMPARAISON_0_0

---
$EXPRESSION_0_0
$OROP_0_0
$EXPRESSION_0_1

429 $OREXPRESSION_1_0: 
---
$COMPARAISON_0_0


>> 324 Rewrite: $EXPRESSION
271 adding an edge
--
$OREXPRESSION_1_0

271 adding an edge
--
$OREXPRESSION_1_1

371 special case
271 adding an edge
--
$NOTOP_0_0
$EXPRESSION_0_0

271 adding an edge
--
$NOTOP_0_0
$EXPRESSION_0_1

421 add an empty transitions for "$EXPRESSION_1"
287 before adding an edge
""

291 adding an edge
--
""

371 special case
287 before adding an edge
$NOTOP
$EXPRESSION_1_0

291 adding an edge
--
$NOTOP_0_0
$EXPRESSION_1_0

429 $EXPRESSION_0_0: 
---
$OREXPRESSION_1_0

---
$NOTOP_0_0
$EXPRESSION_0_0

429 $EXPRESSION_0_1: 
---
$OREXPRESSION_1_1

---
$NOTOP_0_0
$EXPRESSION_0_1

429 $EXPRESSION_1_0: 
---
""

---
$NOTOP_0_0
$EXPRESSION_1_0


>> 324 Rewrite: $COMPARAISON
287 before adding an edge
$TERM
$COMPOP
$TERM

291 adding an edge
--
$TERM_0_0
$COMPOP_0_0
$TERM_0_0

287 before adding an edge
$TERM
$COMPOP
$TERM

291 adding an edge
--
$TERM_0_0
$COMPOP_0_0
$TERM_0_0

429 $COMPARAISON_0_0: 
---
$TERM_0_0
$COMPOP_0_0
$TERM_0_0

429 $COMPARAISON_1_0: 
---
$TERM_0_0
$COMPOP_0_0
$TERM_0_0


>> 324 Rewrite: $COMPOP
287 before adding an edge
"F"

291 adding an edge
--
"F"

287 before adding an edge
"F"

291 adding an edge
--
"F"

429 $COMPOP_0_0: 
---
"F"

429 $COMPOP_1_0: 
---
"F"


>> 324 Rewrite: $OROP
287 before adding an edge
"or"

291 adding an edge
--
"or"

287 before adding an edge
"or"

291 adding an edge
--
"or"

429 $OROP_0_0: 
---
"or"

429 $OROP_1_0: 
---
"or"


>> 324 Rewrite: $NOTOP
287 before adding an edge
"not"

291 adding an edge
--
"not"

287 before adding an edge
"not"

291 adding an edge
--
"not"

429 $NOTOP_0_0: 
---
"not"

429 $NOTOP_1_0: 
---
"not"


>> 324 Rewrite: $TERM
287 before adding an edge
$STRING

291 adding an edge
--
$STRING_0_0

287 before adding an edge
$QUOTE
$TERM_1
$QUOTE

291 adding an edge
--
$QUOTE_0_0
$TERM_1_0
$QUOTE_0_0

271 adding an edge
--
$STRING_0_0

429 $TERM_0_0: 
---
$STRING_0_0

---
$QUOTE_0_0
$TERM_1_0
$QUOTE_0_0

429 $TERM_1_0: 
---
$STRING_0_0


>> 324 Rewrite: $STRING
287 before adding an edge
"a"

291 adding an edge
--
"a"

287 before adding an edge
"a"

291 adding an edge
--
"a"

429 $STRING_0_0: 
---
"a"

429 $STRING_1_0: 
---
"a"


>> 324 Rewrite: $QUOTE
287 before adding an edge
"b"

291 adding an edge
--
"b"

287 before adding an edge
"b"

291 adding an edge
--
"b"

429 $QUOTE_0_0: 
---
"b"

429 $QUOTE_1_0: 
---
"b"


527 Eval $EXPRESSION_0_0 instead of $EXPRESSION_0_1
604 $COMPARAISON_0_0--> 
"a""F""a"
"a""F""b""a""b"
"b""a""b""F""a"
"b""a""b""F""b""a""b"

604 $COMPOP_0_0--> 
"F"

604 $EXPRESSION_0_0--> 
("not")*"a""F""a"
("not")*"a""F""b""a""b"
("not")*"b""a""b""F""a"
("not")*"b""a""b""F""b""a""b"

604 $EXPRESSION_0_1--> 
("not")*"a""F""a"
("not")*"a""F""b""a""b"
("not")*"b""a""b""F""a"
("not")*"b""a""b""F""b""a""b"

604 $NOTOP_0_0--> 
"not"

604 $OREXPRESSION_0_0--> 
"a""F""a"
"a""F""b""a""b"
"b""a""b""F""a"
"b""a""b""F""b""a""b"
("not")*"a""F""a""or"("not")*"a""F""a"
("not")*"a""F""a""or"("not")*"a""F""b""a""b"
("not")*"a""F""a""or"("not")*"b""a""b""F""a"
("not")*"a""F""a""or"("not")*"b""a""b""F""b""a""b"
("not")*"a""F""b""a""b""or"("not")*"a""F""a"
("not")*"a""F""b""a""b""or"("not")*"a""F""b""a""b"
("not")*"a""F""b""a""b""or"("not")*"b""a""b""F""a"
("not")*"a""F""b""a""b""or"("not")*"b""a""b""F""b""a""b"
("not")*"b""a""b""F""a""or"("not")*"a""F""a"
("not")*"b""a""b""F""a""or"("not")*"a""F""b""a""b"
("not")*"b""a""b""F""a""or"("not")*"b""a""b""F""a"
("not")*"b""a""b""F""a""or"("not")*"b""a""b""F""b""a""b"
("not")*"b""a""b""F""b""a""b""or"("not")*"a""F""a"
("not")*"b""a""b""F""b""a""b""or"("not")*"a""F""b""a""b"
("not")*"b""a""b""F""b""a""b""or"("not")*"b""a""b""F""a"
("not")*"b""a""b""F""b""a""b""or"("not")*"b""a""b""F""b""a""b"

604 $OREXPRESSION_1_0--> 
"a""F""a"
"a""F""b""a""b"
"b""a""b""F""a"
"b""a""b""F""b""a""b"

604 $OROP_0_0--> 
"or"

604 $QUOTE_0_0--> 
"b"

604 $STRING_0_0--> 
"a"

604 $TERM_0_0--> 
"a"
"b""a""b"

604 $TERM_1_0--> 
"a"

757 $COMPARAISON--> 
aFa
aFbab
babFa
babFbab

757 $COMPOP--> 
F

757 $EXPRESSION--> 
(not)*aFa
(not)*aFbab
(not)*babFa
(not)*babFbab

757 $NOTOP--> 
not

757 $OREXPRESSION--> 
(not)*aFaor(not)*aFa
(not)*aFaor(not)*aFbab
(not)*aFaor(not)*babFa
(not)*aFaor(not)*babFbab
(not)*aFbabor(not)*aFa
(not)*aFbabor(not)*aFbab
(not)*aFbabor(not)*babFa
(not)*aFbabor(not)*babFbab
(not)*babFaor(not)*aFa
(not)*babFaor(not)*aFbab
(not)*babFaor(not)*babFa
(not)*babFaor(not)*babFbab
(not)*babFbabor(not)*aFa
(not)*babFbabor(not)*aFbab
(not)*babFbabor(not)*babFa
(not)*babFbabor(not)*babFbab
aFa
aFbab
babFa
babFbab

757 $OROP--> 
or

757 $QUOTE--> 
b

757 $STRING--> 
a

757 $TERM--> 
a
bab

170 $COMPARAISON: 
172	aFa
172	aFbab
172	babFa
172	babFbab
170 $COMPOP: 
172	F
170 $EXPRESSION: 
172	(not)*aFa
172	(not)*aFbab
172	(not)*babFa
172	(not)*babFbab
170 $NOTOP: 
172	not
170 $OREXPRESSION: 
172	(not)*aFaor(not)*aFa
172	(not)*aFaor(not)*aFbab
172	(not)*aFaor(not)*babFa
172	(not)*aFaor(not)*babFbab
172	(not)*aFbabor(not)*aFa
172	(not)*aFbabor(not)*aFbab
172	(not)*aFbabor(not)*babFa
172	(not)*aFbabor(not)*babFbab
172	(not)*babFaor(not)*aFa
172	(not)*babFaor(not)*aFbab
172	(not)*babFaor(not)*babFa
172	(not)*babFaor(not)*babFbab
172	(not)*babFbabor(not)*aFa
172	(not)*babFbabor(not)*aFbab
172	(not)*babFbabor(not)*babFa
172	(not)*babFbabor(not)*babFbab
172	aFa
172	aFbab
172	babFa
172	babFbab
170 $OROP: 
172	or
170 $QUOTE: 
172	b
170 $STRING: 
172	a
170 $TERM: 
172	a
172	bab
Input file: pisa/pisa-007.smt2

Grammar file: sql.grm

245 creating /tmp/fat_str_convert/: OK
***********************************************
*              initGraph             *
-----------------------------------------------
 filename_0, s,
(assert (= filename_0 s) )


 i0, filename_0,
(assert (= i0 (Indexof filename_0 "/") ) )


 i0, i1, filename_0, i2, filename_0, i1, filename_1, filename_0, i1, i2, filename_1, filename_0,
(assert (ite (not (= i0 (- 0 1) ) )
             (and (= i1 (LastIndexof filename_0 "/") ) 
                  (= i2 (- (Length filename_0) i1) )
                  (= filename_1 (Substring filename_0 i1 i2) )                  
             )
             (= filename_1 filename_0)
        )
)


 i3, filename_1,
(assert (= i3 (Indexof filename_1 ".") ) )


 i3, filename_2, filename_1, i3, filename_2, filename_1,
(assert (ite (not (= i3 (- 0 1) ) )
             (= filename_2 (Substring filename_1 0 i3) )
             (= filename_2 filename_1)
        ) 
)


 filename_2,
(assert (Contains filename_2 "../") )


(check-sat)

***********************************************
*              convertFile             *
-----------------------------------------------
227 creating /tmp/fat_str_convert/: OK
***********************************************
*              fat_theory                     *
-----------------------------------------------
String Input Var Set
***********************************************
filename_0
s
filename_1
filename_2

***********************************************
Input loaded:
-----------------------------------------------
(let ((a!1 (and (= i1 (LastIndexof filename_0 __cOnStStR__x2f))
                (= i2 (- (Length filename_0) i1))
                (= filename_1 (Substring filename_0 i1 i2))))
      (a!3 (ite (not (= i3 (- 0 1)))
                (= filename_2 (Substring filename_1 0 i3))
                (= filename_2 filename_1))))
(let ((a!2 (ite (not (= i0 (- 0 1))) a!1 (= filename_1 filename_0))))
  (and (= filename_0 s)
       (= i0 (Indexof filename_0 __cOnStStR__x2f))
       a!2
       (= i3 (Indexof filename_1 __cOnStStR__x2e))
       a!3
       (Contains filename_2 __cOnStStR__x2e_x2e_x2f))))
-----------------------------------------------


>> cb_reduce_eq: filename_0 = s


 converted to : (and (>= (Length filename_0) 0) (>= (Length s) 0) (= filename_0 s))
>> [containRegister] Contains(filename_0, (AutomataDef /)) = $$_bool0
1065 addContainRelation: filename_0 "/"
1077 addContainRelation: /
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef /) $$_str1)) 0))
      (a!2 (= (Length (Concat (AutomataDef /) $$_str1))
              (+ (Length (AutomataDef /)) (Length $$_str1)))))
  (and (= (Length (AutomataDef /)) 1)
       (>= (Length (AutomataDef /)) 0)
       (>= (Length $$_str1) 0)
       a!1
       a!2))
---------------------


>> cb_reduce_app(): Concat((AutomataDef /), $$_str1)
False update 
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef /) $$_str1)) 0))
      (a!2 (Length (Concat $$_str0 (Concat (AutomataDef /) $$_str1))))
      (a!3 (+ (Length $$_str0) (Length (Concat (AutomataDef /) $$_str1)))))
  (and (>= (Length $$_str0) 0) a!1 (>= a!2 0) (= a!2 a!3)))
---------------------


>> cb_reduce_app(): Concat($$_str0, (Concat (AutomataDef /) $$_str1))
False update 
---------------------
Assertion Add(@451, Level 0):
(and (>= (Length $$_str2) 0)
     (>= (Length $$_str3) 0)
     (>= (Length (Concat $$_str2 $$_str3)) 0)
     (= (Length (Concat $$_str2 $$_str3)) (+ (Length $$_str2) (Length $$_str3))))
---------------------


>> cb_reduce_app(): Concat($$_str2, $$_str3)
False update 

>> cb_reduce_app(): Indexof(filename_0, "/")  =>  $$_int0
-- ADD(@906): 
(let ((a!1 (= filename_0 (Concat $$_str0 (Concat (AutomataDef /) $$_str1)))))
  (ite $$_bool0
       (and a!1
            (= $$_int0 (Length $$_str0))
            (= filename_0 (Concat $$_str2 $$_str3))
            (= (Length $$_str2) (+ $$_int0 1 (- 1)))
            (not (Contains $$_str2 /)))
       (= $$_int0 (- 1))))


>> cb_reduce_eq: filename_0 = (Concat $$_str0 (Concat (AutomataDef /) $$_str1))


 converted to : (let ((a!1 (= filename_0 (Concat $$_str0 (Concat (AutomataDef /) $$_str1)))))
  (and (>= (Length filename_0) 0) a!1))

>> cb_reduce_eq: filename_0 = (Concat $$_str2 $$_str3)


 converted to : (and (>= (Length filename_0) 0) (= filename_0 (Concat $$_str2 $$_str3)))
>> [containRegister] Contains($$_str2, (AutomataDef /)) = $$_bool1
1065 addContainRelation: $$_str2 "/"
1077 addContainRelation: /
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef /) $$_str5)) 0))
      (a!2 (= (Length (Concat (AutomataDef /) $$_str5))
              (+ (Length (AutomataDef /)) (Length $$_str5)))))
  (and (= (Length (AutomataDef /)) 1)
       (>= (Length (AutomataDef /)) 0)
       (>= (Length $$_str5) 0)
       a!1
       a!2))
---------------------


>> cb_reduce_app(): Concat((AutomataDef /), $$_str5)
False update 
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef /) $$_str5)) 0))
      (a!2 (Length (Concat $$_str4 (Concat (AutomataDef /) $$_str5))))
      (a!3 (+ (Length $$_str4) (Length (Concat (AutomataDef /) $$_str5)))))
  (and (>= (Length $$_str4) 0) a!1 (>= a!2 0) (= a!2 a!3)))
---------------------


>> cb_reduce_app(): Concat($$_str4, (Concat (AutomataDef /) $$_str5))
False update 

>> cb_reduce_app(): Contains($$_str2, "/")  =>  $$_bool1
-- ADD(@878): 
(let ((a!1 (= $$_str2 (Concat $$_str4 (Concat (AutomataDef /) $$_str5)))))
  (= $$_bool1 a!1))


>> cb_reduce_eq: $$_str2 = (Concat $$_str4 (Concat (AutomataDef /) $$_str5))


 converted to : (let ((a!1 (= $$_str2 (Concat $$_str4 (Concat (AutomataDef /) $$_str5)))))
  (and (>= (Length $$_str2) 0) a!1))

>> cb_reduce_eq: filename_1 = filename_0


 converted to : (and (>= (Length filename_1) 0)
     (>= (Length filename_0) 0)
     (= filename_1 filename_0))
490 reduce_lastindexof: (LastIndexof filename_0 "/")
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef /) $$_str7)) 0))
      (a!2 (= (Length (Concat (AutomataDef /) $$_str7))
              (+ (Length (AutomataDef /)) (Length $$_str7)))))
  (and (= (Length (AutomataDef /)) 1)
       (>= (Length (AutomataDef /)) 0)
       (>= (Length $$_str7) 0)
       a!1
       a!2))
---------------------


>> cb_reduce_app(): Concat((AutomataDef /), $$_str7)
False update 
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef /) $$_str7)) 0))
      (a!2 (Length (Concat $$_str6 (Concat (AutomataDef /) $$_str7))))
      (a!3 (+ (Length $$_str6) (Length (Concat (AutomataDef /) $$_str7)))))
  (and (>= (Length $$_str6) 0) a!1 (>= a!2 0) (= a!2 a!3)))
---------------------


>> cb_reduce_app(): Concat($$_str6, (Concat (AutomataDef /) $$_str7))
False update 
>> [containRegister] Contains(filename_0, (AutomataDef /)) = $$_bool0
1065 addContainRelation: filename_0 "/"
1077 addContainRelation: /

>> cb_reduce_app(): LastIndexof(filename_0, "/")  =>  $$_int1
-- ADD(@934): 
(let ((a!1 (= filename_0 (Concat $$_str6 (Concat (AutomataDef /) $$_str7))))
      (a!2 (ite $$_bool0
                (and (>= $$_int1 0)
                     (not (Contains $$_str7 /))
                     (= $$_int1 (Length $$_str6)))
                (= $$_int1 (- 1)))))
  (and (= $$_bool0 a!1) a!2))


>> cb_reduce_eq: filename_0 = (Concat $$_str6 (Concat (AutomataDef /) $$_str7))


 converted to : (let ((a!1 (= filename_0 (Concat $$_str6 (Concat (AutomataDef /) $$_str7)))))
  (and (>= (Length filename_0) 0) a!1))
>> [containRegister] Contains($$_str7, (AutomataDef /)) = $$_bool2
1065 addContainRelation: $$_str7 "/"
1077 addContainRelation: /
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef /) $$_str9)) 0))
      (a!2 (= (Length (Concat (AutomataDef /) $$_str9))
              (+ (Length (AutomataDef /)) (Length $$_str9)))))
  (and (= (Length (AutomataDef /)) 1)
       (>= (Length (AutomataDef /)) 0)
       (>= (Length $$_str9) 0)
       a!1
       a!2))
---------------------


>> cb_reduce_app(): Concat((AutomataDef /), $$_str9)
False update 
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef /) $$_str9)) 0))
      (a!2 (Length (Concat $$_str8 (Concat (AutomataDef /) $$_str9))))
      (a!3 (+ (Length $$_str8) (Length (Concat (AutomataDef /) $$_str9)))))
  (and (>= (Length $$_str8) 0) a!1 (>= a!2 0) (= a!2 a!3)))
---------------------


>> cb_reduce_app(): Concat($$_str8, (Concat (AutomataDef /) $$_str9))
False update 

>> cb_reduce_app(): Contains($$_str7, "/")  =>  $$_bool2
-- ADD(@878): 
(let ((a!1 (= $$_str7 (Concat $$_str8 (Concat (AutomataDef /) $$_str9)))))
  (= $$_bool2 a!1))


>> cb_reduce_eq: $$_str7 = (Concat $$_str8 (Concat (AutomataDef /) $$_str9))


 converted to : (let ((a!1 (= $$_str7 (Concat $$_str8 (Concat (AutomataDef /) $$_str9)))))
  (and (>= (Length $$_str7) 0) a!1))
>> [containRegister] Contains(filename_0, $$_str11) = $$_bool3
1065 addContainRelation: filename_0 $$_str11
> Converting a non integer string to int @ 8232. 
---------------------
Assertion Add(@451, Level 0):
(and (>= (Length $$_str11) 0)
     (>= (Length $$_str12) 0)
     (>= (Length (Concat $$_str11 $$_str12)) 0)
     (= (Length (Concat $$_str11 $$_str12))
        (+ (Length $$_str11) (Length $$_str12))))
---------------------


>> cb_reduce_app(): Concat($$_str11, $$_str12)
False update 
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat $$_str10 (Concat $$_str11 $$_str12))) 0))
      (a!2 (= (Length (Concat $$_str10 (Concat $$_str11 $$_str12)))
              (+ (Length $$_str10) (Length (Concat $$_str11 $$_str12))))))
  (and (>= (Length $$_str10) 0)
       (>= (Length (Concat $$_str11 $$_str12)) 0)
       a!1
       a!2))
---------------------


>> cb_reduce_app(): Concat($$_str10, (Concat $$_str11 $$_str12))
False update 


>> cb_reduce_app(): SubString( filename_0, i1, i2)  =>  $$_str11
-- ADD(@853, Level 0):
(and $$_bool3
     (= filename_0 (Concat $$_str10 (Concat $$_str11 $$_str12)))
     (= i1 (Length $$_str10))
     (= i2 (Length $$_str11)))


>> cb_reduce_eq: filename_0 = (Concat $$_str10 (Concat $$_str11 $$_str12))


 converted to : (and (>= (Length filename_0) 0)
     (= filename_0 (Concat $$_str10 (Concat $$_str11 $$_str12))))

>> cb_reduce_eq: filename_1 = $$_str11


 converted to : (and (>= (Length filename_1) 0)
     (>= (Length $$_str11) 0)
     (= filename_1 $$_str11))
>> [containRegister] Contains(filename_1, (AutomataDef .)) = $$_bool4
1065 addContainRelation: filename_1 "."
1077 addContainRelation: .
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef .) $$_str14)) 0))
      (a!2 (= (Length (Concat (AutomataDef .) $$_str14))
              (+ (Length (AutomataDef .)) (Length $$_str14)))))
  (and (= (Length (AutomataDef .)) 1)
       (>= (Length (AutomataDef .)) 0)
       (>= (Length $$_str14) 0)
       a!1
       a!2))
---------------------


>> cb_reduce_app(): Concat((AutomataDef .), $$_str14)
False update 
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef .) $$_str14)) 0))
      (a!2 (Length (Concat $$_str13 (Concat (AutomataDef .) $$_str14))))
      (a!3 (+ (Length $$_str13) (Length (Concat (AutomataDef .) $$_str14)))))
  (and (>= (Length $$_str13) 0) a!1 (>= a!2 0) (= a!2 a!3)))
---------------------


>> cb_reduce_app(): Concat($$_str13, (Concat (AutomataDef .) $$_str14))
False update 
---------------------
Assertion Add(@451, Level 0):
(and (>= (Length $$_str15) 0)
     (>= (Length $$_str16) 0)
     (>= (Length (Concat $$_str15 $$_str16)) 0)
     (= (Length (Concat $$_str15 $$_str16))
        (+ (Length $$_str15) (Length $$_str16))))
---------------------


>> cb_reduce_app(): Concat($$_str15, $$_str16)
False update 

>> cb_reduce_app(): Indexof(filename_1, ".")  =>  $$_int2
-- ADD(@906): 
(let ((a!1 (= filename_1 (Concat $$_str13 (Concat (AutomataDef .) $$_str14)))))
  (ite $$_bool4
       (and a!1
            (= $$_int2 (Length $$_str13))
            (= filename_1 (Concat $$_str15 $$_str16))
            (= (Length $$_str15) (+ $$_int2 1 (- 1)))
            (not (Contains $$_str15 .)))
       (= $$_int2 (- 1))))


>> cb_reduce_eq: filename_1 = (Concat $$_str13 (Concat (AutomataDef .) $$_str14))


 converted to : (let ((a!1 (= filename_1 (Concat $$_str13 (Concat (AutomataDef .) $$_str14)))))
  (and (>= (Length filename_1) 0) a!1))

>> cb_reduce_eq: filename_1 = (Concat $$_str15 $$_str16)


 converted to : (and (>= (Length filename_1) 0) (= filename_1 (Concat $$_str15 $$_str16)))
>> [containRegister] Contains($$_str15, (AutomataDef .)) = $$_bool5
1065 addContainRelation: $$_str15 "."
1077 addContainRelation: .
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef .) $$_str18)) 0))
      (a!2 (= (Length (Concat (AutomataDef .) $$_str18))
              (+ (Length (AutomataDef .)) (Length $$_str18)))))
  (and (= (Length (AutomataDef .)) 1)
       (>= (Length (AutomataDef .)) 0)
       (>= (Length $$_str18) 0)
       a!1
       a!2))
---------------------


>> cb_reduce_app(): Concat((AutomataDef .), $$_str18)
False update 
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef .) $$_str18)) 0))
      (a!2 (Length (Concat $$_str17 (Concat (AutomataDef .) $$_str18))))
      (a!3 (+ (Length $$_str17) (Length (Concat (AutomataDef .) $$_str18)))))
  (and (>= (Length $$_str17) 0) a!1 (>= a!2 0) (= a!2 a!3)))
---------------------


>> cb_reduce_app(): Concat($$_str17, (Concat (AutomataDef .) $$_str18))
False update 

>> cb_reduce_app(): Contains($$_str15, ".")  =>  $$_bool5
-- ADD(@878): 
(let ((a!1 (= $$_str15 (Concat $$_str17 (Concat (AutomataDef .) $$_str18)))))
  (= $$_bool5 a!1))


>> cb_reduce_eq: $$_str15 = (Concat $$_str17 (Concat (AutomataDef .) $$_str18))


 converted to : (let ((a!1 (= $$_str15 (Concat $$_str17 (Concat (AutomataDef .) $$_str18)))))
  (and (>= (Length $$_str15) 0) a!1))

>> cb_reduce_eq: filename_2 = filename_1


 converted to : (and (>= (Length filename_2) 0)
     (>= (Length filename_1) 0)
     (= filename_2 filename_1))
>> [containRegister] Contains(filename_1, $$_str20) = $$_bool6
1065 addContainRelation: filename_1 $$_str20
---------------------
Assertion Add(@451, Level 0):
(and (>= (Length $$_str20) 0)
     (>= (Length $$_str21) 0)
     (>= (Length (Concat $$_str20 $$_str21)) 0)
     (= (Length (Concat $$_str20 $$_str21))
        (+ (Length $$_str20) (Length $$_str21))))
---------------------


>> cb_reduce_app(): Concat($$_str20, $$_str21)
False update 


>> cb_reduce_app(): SubString( filename_1, 0, i3)  =>  $$_str20
-- ADD(@853, Level 0):
(and $$_bool6
     (= filename_1 (Concat $$_str20 $$_str21))
     (= i3 (Length $$_str20)))


>> cb_reduce_eq: filename_1 = (Concat $$_str20 $$_str21)


 converted to : (and (>= (Length filename_1) 0) (= filename_1 (Concat $$_str20 $$_str21)))

>> cb_reduce_eq: filename_2 = $$_str20


 converted to : (and (>= (Length filename_2) 0)
     (>= (Length $$_str20) 0)
     (= filename_2 $$_str20))
>> [containRegister] Contains(filename_2, (AutomataDef ../)) = $$_bool7
1065 addContainRelation: filename_2 "../"
1077 addContainRelation: ../
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef ../) $$_str23)) 0))
      (a!2 (= (Length (Concat (AutomataDef ../) $$_str23))
              (+ (Length (AutomataDef ../)) (Length $$_str23)))))
  (and (= (Length (AutomataDef ../)) 3)
       (>= (Length (AutomataDef ../)) 0)
       (>= (Length $$_str23) 0)
       a!1
       a!2))
---------------------


>> cb_reduce_app(): Concat((AutomataDef ../), $$_str23)
False update 
---------------------
Assertion Add(@451, Level 0):
(let ((a!1 (>= (Length (Concat (AutomataDef ../) $$_str23)) 0))
      (a!2 (Length (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))))
      (a!3 (+ (Length $$_str22) (Length (Concat (AutomataDef ../) $$_str23)))))
  (and (>= (Length $$_str22) 0) a!1 (>= a!2 0) (= a!2 a!3)))
---------------------


>> cb_reduce_app(): Concat($$_str22, (Concat (AutomataDef ../) $$_str23))
False update 

>> cb_reduce_app(): Contains(filename_2, "../")  =>  $$_bool7
-- ADD(@878): 
(let ((a!1 (= filename_2 (Concat $$_str22 (Concat (AutomataDef ../) $$_str23)))))
  (= $$_bool7 a!1))


>> cb_reduce_eq: filename_2 = (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


 converted to : (let ((a!1 (= filename_2 (Concat $$_str22 (Concat (AutomataDef ../) $$_str23)))))
  (and (>= (Length filename_2) 0) a!1))

>> cb_reduce_app(): Concat((AutomataDef /), $$_str1)
False update 

>> cb_reduce_app(): Concat($$_str0, (Concat (AutomataDef /) $$_str1))
False update 

>> cb_reduce_app(): Concat($$_str2, $$_str3)
False update 

>> cb_reduce_app(): Concat((AutomataDef /), $$_str5)
False update 

>> cb_reduce_app(): Concat($$_str4, (Concat (AutomataDef /) $$_str5))
False update 

>> cb_reduce_eq: $$_str2 = (Concat $$_str4 (Concat (AutomataDef /) $$_str5))


>> cb_reduce_eq: filename_0 = (Concat $$_str0 (Concat (AutomataDef /) $$_str1))


>> cb_reduce_eq: filename_0 = (Concat $$_str2 $$_str3)


>> cb_reduce_app(): Concat((AutomataDef /), $$_str7)
False update 

>> cb_reduce_app(): Concat($$_str6, (Concat (AutomataDef /) $$_str7))
False update 

>> cb_reduce_app(): Concat((AutomataDef /), $$_str9)
False update 

>> cb_reduce_app(): Concat($$_str8, (Concat (AutomataDef /) $$_str9))
False update 

>> cb_reduce_eq: $$_str7 = (Concat $$_str8 (Concat (AutomataDef /) $$_str9))


>> cb_reduce_eq: filename_0 = (Concat $$_str6 (Concat (AutomataDef /) $$_str7))


>> cb_reduce_app(): Concat($$_str11, $$_str12)
False update 

>> cb_reduce_app(): Concat($$_str10, (Concat $$_str11 $$_str12))
False update 

>> cb_reduce_eq: filename_0 = (Concat $$_str10 (Concat $$_str11 $$_str12))


>> cb_reduce_app(): Concat((AutomataDef .), $$_str14)
False update 

>> cb_reduce_app(): Concat($$_str13, (Concat (AutomataDef .) $$_str14))
False update 

>> cb_reduce_app(): Concat($$_str15, $$_str16)
False update 

>> cb_reduce_app(): Concat((AutomataDef .), $$_str18)
False update 

>> cb_reduce_app(): Concat($$_str17, (Concat (AutomataDef .) $$_str18))
False update 

>> cb_reduce_eq: $$_str15 = (Concat $$_str17 (Concat (AutomataDef .) $$_str18))


>> cb_reduce_eq: filename_1 = (Concat $$_str13 (Concat (AutomataDef .) $$_str14))


>> cb_reduce_eq: filename_1 = (Concat $$_str15 $$_str16)


>> cb_reduce_app(): Concat($$_str20, $$_str21)
False update 

>> cb_reduce_eq: filename_1 = (Concat $$_str20 $$_str21)


>> cb_reduce_app(): Concat((AutomataDef ../), $$_str23)
False update 

>> cb_reduce_app(): Concat($$_str22, (Concat (AutomataDef ../) $$_str23))
False update 

>> cb_reduce_eq: filename_2 = (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


>> cb_reduce_eq: filename_0 = s


>> cb_reduce_eq: filename_1 = filename_0


>> cb_reduce_eq: filename_1 = $$_str11


>> cb_reduce_eq: filename_2 = filename_1


>> cb_reduce_eq: filename_2 = $$_str20


>> cb_reduce_app(): Concat((AutomataDef /), $$_str1)
False update 

>> cb_reduce_app(): Concat($$_str0, (Concat (AutomataDef /) $$_str1))
False update 

>> cb_reduce_app(): Concat($$_str2, $$_str3)
False update 

>> cb_reduce_app(): Concat((AutomataDef /), $$_str5)
False update 

>> cb_reduce_app(): Concat($$_str4, (Concat (AutomataDef /) $$_str5))
False update 

>> cb_reduce_app(): Concat((AutomataDef /), $$_str7)
False update 

>> cb_reduce_app(): Concat($$_str6, (Concat (AutomataDef /) $$_str7))
False update 

>> cb_reduce_app(): Concat((AutomataDef /), $$_str9)
False update 

>> cb_reduce_app(): Concat($$_str8, (Concat (AutomataDef /) $$_str9))
False update 

>> cb_reduce_app(): Concat($$_str11, $$_str12)
False update 

>> cb_reduce_app(): Concat($$_str10, (Concat $$_str11 $$_str12))
False update 

>> cb_reduce_app(): Concat((AutomataDef .), $$_str14)
False update 

>> cb_reduce_app(): Concat($$_str13, (Concat (AutomataDef .) $$_str14))
False update 

>> cb_reduce_app(): Concat($$_str15, $$_str16)
False update 

>> cb_reduce_app(): Concat((AutomataDef .), $$_str18)
False update 

>> cb_reduce_app(): Concat($$_str17, (Concat (AutomataDef .) $$_str18))
False update 

>> cb_reduce_app(): Concat($$_str20, $$_str21)
False update 

>> cb_reduce_app(): Concat((AutomataDef ../), $$_str23)
False update 

>> cb_reduce_app(): Concat($$_str22, (Concat (AutomataDef ../) $$_str23))
False update 

>> cb_reduce_eq: $$_str2 = (Concat $$_str4 (Concat (AutomataDef /) $$_str5))


>> cb_reduce_eq: filename_0 = (Concat $$_str0 (Concat (AutomataDef /) $$_str1))


>> cb_reduce_eq: filename_0 = (Concat $$_str2 $$_str3)


>> cb_reduce_eq: $$_str7 = (Concat $$_str8 (Concat (AutomataDef /) $$_str9))


>> cb_reduce_eq: filename_0 = (Concat $$_str6 (Concat (AutomataDef /) $$_str7))


>> cb_reduce_eq: filename_0 = (Concat $$_str10 (Concat $$_str11 $$_str12))


>> cb_reduce_eq: $$_str15 = (Concat $$_str17 (Concat (AutomataDef .) $$_str18))


>> cb_reduce_eq: filename_1 = (Concat $$_str13 (Concat (AutomataDef .) $$_str14))


>> cb_reduce_eq: filename_1 = (Concat $$_str15 $$_str16)


>> cb_reduce_eq: filename_1 = (Concat $$_str20 $$_str21)


>> cb_reduce_eq: filename_2 = (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


>> cb_reduce_eq: filename_0 = s


>> cb_reduce_eq: filename_1 = filename_0


>> cb_reduce_eq: filename_1 = $$_str11


>> cb_reduce_eq: filename_2 = filename_1


>> cb_reduce_eq: filename_2 = $$_str20


>> cb_reduce_app(): Concat((AutomataDef /), $$_str1)
False update 

>> cb_reduce_app(): Concat($$_str0, (Concat (AutomataDef /) $$_str1))
False update 

>> cb_reduce_app(): Concat($$_str2, $$_str3)
False update 

>> cb_reduce_app(): Concat((AutomataDef /), $$_str5)
False update 

>> cb_reduce_app(): Concat($$_str4, (Concat (AutomataDef /) $$_str5))
False update 

>> cb_reduce_app(): Concat((AutomataDef /), $$_str7)
False update 

>> cb_reduce_app(): Concat($$_str6, (Concat (AutomataDef /) $$_str7))
False update 

>> cb_reduce_app(): Concat((AutomataDef /), $$_str9)
False update 

>> cb_reduce_app(): Concat($$_str8, (Concat (AutomataDef /) $$_str9))
False update 

>> cb_reduce_app(): Concat($$_str11, $$_str12)
False update 

>> cb_reduce_app(): Concat($$_str10, (Concat $$_str11 $$_str12))
False update 

>> cb_reduce_app(): Concat((AutomataDef .), $$_str14)
False update 

>> cb_reduce_app(): Concat($$_str13, (Concat (AutomataDef .) $$_str14))
False update 

>> cb_reduce_app(): Concat($$_str15, $$_str16)
False update 

>> cb_reduce_app(): Concat((AutomataDef .), $$_str18)
False update 

>> cb_reduce_app(): Concat($$_str17, (Concat (AutomataDef .) $$_str18))
False update 

>> cb_reduce_app(): Concat($$_str20, $$_str21)
False update 

>> cb_reduce_app(): Concat((AutomataDef ../), $$_str23)
False update 

>> cb_reduce_app(): Concat($$_str22, (Concat (AutomataDef ../) $$_str23))
False update 

>> cb_reduce_eq: $$_str2 = (Concat $$_str4 (Concat (AutomataDef /) $$_str5))


>> cb_reduce_eq: filename_0 = (Concat $$_str0 (Concat (AutomataDef /) $$_str1))


>> cb_reduce_eq: filename_0 = (Concat $$_str2 $$_str3)


>> cb_reduce_eq: $$_str7 = (Concat $$_str8 (Concat (AutomataDef /) $$_str9))


>> cb_reduce_eq: filename_0 = (Concat $$_str6 (Concat (AutomataDef /) $$_str7))


>> cb_reduce_eq: filename_0 = (Concat $$_str10 (Concat $$_str11 $$_str12))


>> cb_reduce_eq: $$_str15 = (Concat $$_str17 (Concat (AutomataDef .) $$_str18))


>> cb_reduce_eq: filename_1 = (Concat $$_str13 (Concat (AutomataDef .) $$_str14))


>> cb_reduce_eq: filename_1 = (Concat $$_str15 $$_str16)


>> cb_reduce_eq: filename_1 = (Concat $$_str20 $$_str21)


>> cb_reduce_eq: filename_2 = (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


>> cb_reduce_eq: filename_0 = s


>> cb_reduce_eq: filename_1 = filename_0


>> cb_reduce_eq: filename_1 = $$_str11


>> cb_reduce_eq: filename_2 = filename_1


>> cb_reduce_eq: filename_2 = $$_str20



Var In Length = {filename_0, }
***********************************************
*               Starting Search               *
-----------------------------------------------
(let ((a!1 (* (- 1) (Length (Concat (AutomataDef /) $$_str1))))
      (a!3 (Length (Concat $$_str0 (Concat (AutomataDef /) $$_str1))))
      (a!5 (+ (Length $$_str2)
              (Length $$_str3)
              (* (- 1) (Length (Concat $$_str2 $$_str3)))))
      (a!6 (* (- 1) (Length (Concat (AutomataDef /) $$_str5))))
      (a!8 (Length (Concat $$_str4 (Concat (AutomataDef /) $$_str5))))
      (a!10 (* (- 1) (Length (Concat (AutomataDef /) $$_str7))))
      (a!12 (Length (Concat $$_str6 (Concat (AutomataDef /) $$_str7))))
      (a!14 (* (- 1) (Length (Concat (AutomataDef /) $$_str9))))
      (a!16 (Length (Concat $$_str8 (Concat (AutomataDef /) $$_str9))))
      (a!18 (+ (Length $$_str11)
               (Length $$_str12)
               (* (- 1) (Length (Concat $$_str11 $$_str12)))))
      (a!19 (* (- 1) (Length (Concat $$_str10 (Concat $$_str11 $$_str12)))))
      (a!21 (* (- 1) (Length (Concat (AutomataDef .) $$_str14))))
      (a!23 (Length (Concat $$_str13 (Concat (AutomataDef .) $$_str14))))
      (a!25 (+ (Length $$_str15)
               (Length $$_str16)
               (* (- 1) (Length (Concat $$_str15 $$_str16)))))
      (a!26 (* (- 1) (Length (Concat (AutomataDef .) $$_str18))))
      (a!28 (Length (Concat $$_str17 (Concat (AutomataDef .) $$_str18))))
      (a!30 (+ (Length $$_str20)
               (Length $$_str21)
               (* (- 1) (Length (Concat $$_str20 $$_str21)))))
      (a!31 (* (- 1) (Length (Concat (AutomataDef ../) $$_str23))))
      (a!33 (Length (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))))
      (a!35 (>= (Length (Concat (AutomataDef /) $$_str1)) 0))
      (a!36 (>= (Length (Concat (AutomataDef /) $$_str5)) 0))
      (a!37 (>= (Length (Concat (AutomataDef /) $$_str7)) 0))
      (a!38 (>= (Length (Concat (AutomataDef /) $$_str9)) 0))
      (a!39 (>= (Length (Concat $$_str10 (Concat $$_str11 $$_str12))) 0))
      (a!40 (>= (Length (Concat (AutomataDef .) $$_str14)) 0))
      (a!41 (>= (Length (Concat (AutomataDef .) $$_str18)) 0))
      (a!42 (>= (Length (Concat (AutomataDef ../) $$_str23)) 0)))
(let ((a!2 (= (+ (Length (AutomataDef /)) (Length $$_str1) a!1) 0))
      (a!4 (+ (Length (Concat (AutomataDef /) $$_str1))
              (Length $$_str0)
              (* (- 1) a!3)))
      (a!7 (= (+ (Length (AutomataDef /)) (Length $$_str5) a!6) 0))
      (a!9 (+ (Length (Concat (AutomataDef /) $$_str5))
              (Length $$_str4)
              (* (- 1) a!8)))
      (a!11 (= (+ (Length (AutomataDef /)) (Length $$_str7) a!10) 0))
      (a!13 (+ (Length (Concat (AutomataDef /) $$_str7))
               (Length $$_str6)
               (* (- 1) a!12)))
      (a!15 (= (+ (Length (AutomataDef /)) (Length $$_str9) a!14) 0))
      (a!17 (+ (Length (Concat (AutomataDef /) $$_str9))
               (Length $$_str8)
               (* (- 1) a!16)))
      (a!20 (= (+ (Length (Concat $$_str11 $$_str12)) (Length $$_str10) a!19) 0))
      (a!22 (= (+ (Length (AutomataDef .)) (Length $$_str14) a!21) 0))
      (a!24 (+ (Length (Concat (AutomataDef .) $$_str14))
               (Length $$_str13)
               (* (- 1) a!23)))
      (a!27 (= (+ (Length (AutomataDef .)) (Length $$_str18) a!26) 0))
      (a!29 (+ (Length (Concat (AutomataDef .) $$_str18))
               (Length $$_str17)
               (* (- 1) a!28)))
      (a!32 (= (+ (Length (AutomataDef ../)) (Length $$_str23) a!31) 0))
      (a!34 (+ (Length (Concat (AutomataDef ../) $$_str23))
               (Length $$_str22)
               (* (- 1) a!33))))
  (and (= (Length (AutomataDef /)) 1)
       a!2
       (= a!4 0)
       (= a!5 0)
       a!7
       (= a!9 0)
       a!11
       (= a!13 0)
       a!15
       (= a!17 0)
       (= a!18 0)
       a!20
       (= (Length (AutomataDef .)) 1)
       a!22
       (= a!24 0)
       (= a!25 0)
       a!27
       (= a!29 0)
       (= a!30 0)
       (= (Length (AutomataDef ../)) 3)
       a!32
       (= a!34 0)
       (>= (Length $$_str1) 0)
       a!35
       (>= (Length $$_str0) 0)
       (>= a!3 0)
       (>= (Length $$_str2) 0)
       (>= (Length $$_str3) 0)
       (>= (Length (Concat $$_str2 $$_str3)) 0)
       (>= (Length $$_str5) 0)
       a!36
       (>= (Length $$_str4) 0)
       (>= a!8 0)
       (>= (Length $$_str7) 0)
       a!37
       (>= (Length $$_str6) 0)
       (>= a!12 0)
       (>= (Length $$_str9) 0)
       a!38
       (>= (Length $$_str8) 0)
       (>= a!16 0)
       (>= (Length $$_str11) 0)
       (>= (Length $$_str12) 0)
       (>= (Length (Concat $$_str11 $$_str12)) 0)
       (>= (Length $$_str10) 0)
       a!39
       $$_bool3
       (>= (Length filename_0) 0)
       (= filename_0 (Concat $$_str10 (Concat $$_str11 $$_str12)))
       (= i1 (Length $$_str10))
       (= i2 (Length $$_str11))
       (>= (Length $$_str14) 0)
       a!40
       (>= (Length $$_str13) 0)
       (>= a!23 0)
       (>= (Length $$_str15) 0)
       (>= (Length $$_str16) 0)
       (>= (Length (Concat $$_str15 $$_str16)) 0)
       (>= (Length $$_str18) 0)
       a!41
       (>= (Length $$_str17) 0)
       (>= a!28 0)
       (>= (Length $$_str20) 0)
       (>= (Length $$_str21) 0)
       (>= (Length (Concat $$_str20 $$_str21)) 0)
       $$_bool6
       (>= (Length filename_1) 0)
       (= filename_1 (Concat $$_str20 $$_str21))
       (= i3 (Length $$_str20))
       (>= (Length $$_str23) 0)
       a!42
       (>= (Length $$_str22) 0)
       (>= a!33 0)
       (>= (Length s) 0)
       (= filename_0 s)
       (= i0 $$_int0)
       (= i3 $$_int2)
       $$_bool7)))




=================================================================================
** cb_new_eq(): @0
(Concat $$_str10 (Concat $$_str11 $$_str12))  = filename_0


** @2626 checkLengthConsistency

>> checkLengthConsistency: Passed
< = > A B C D E F G H I J K L M N O P Q R S T U V W X Y a b c d e f g h i j k l m n o p q r s t u v w x y 
** @3759 Cross Check and Update: (Concat $$_str10 (Concat $$_str11 $$_str12)) == filename_0

>> @3579 Eval Intersection size = 2
>> @3625 at Number of elements: 1 
(Concat $$_str10 (Concat $$_str11 $$_str12))


>> @3387 Eval Node (isIndependence = false): @0 (Concat $$_str10 (Concat $$_str11 $$_str12))

>> @3520 Eval Concat: $$_str10 *concat* (Concat $$_str11 $$_str12)

>> @3387 Eval Node (isIndependence = false): @0 $$_str10

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @0: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (1 elements)
@3768 at After all: 
uNkNoWn

>> @3229 update Equal Map
filename_0
(Concat $$_str10 (Concat $$_str11 $$_str12))


** 3144 Propagate node: (Concat $$_str10 (Concat $$_str11 $$_str12))
 parents_filtered 

eq nn1
(Concat $$_str10 (Concat $$_str11 $$_str12))

eq nn2
filename_0

(Concat $$_str10 (Concat $$_str11 $$_str12)) == filename_0
extend contain nn1
$$_str10
$$_str11
$$_str12

extend contain nn2
filename_0

filename_0 -- $$_str11 --> $$_bool3
filename_0 -- (AutomataDef /) --> $$_bool0
filename_1 -- $$_str20 --> $$_bool6
filename_1 -- (AutomataDef .) --> $$_bool4
filename_2 -- (AutomataDef ../) --> $$_bool7
$$_str2 -- (AutomataDef /) --> $$_bool1
$$_str7 -- (AutomataDef /) --> $$_bool2
$$_str15 -- (AutomataDef .) --> $$_bool5
2700------------------------------
$$_str2 -- "/" --> (Contains $$_str2 /)
$$_str7 -- "/" --> (Contains $$_str7 /)
$$_str15 -- "." --> (Contains $$_str15 .)
---------------------
Axiom Add(@2715, Level 0):
$$_bool3
---------------------

(Concat $$_str10 (Concat $$_str11 $$_str12))>> all_prefix_nn1 
$$_str10

filename_0>> all_prefix_nn2 

(Concat $$_str10 (Concat $$_str11 $$_str12))>> all_posfix_nn1 
$$_str12
(Concat $$_str11 $$_str12)

filename_0>> all_posfix_nn2 


=================================================================================
** implyEqualityForConcatMember(): @0





=================================================================================
** cb_new_eq(): @0
(Concat $$_str20 $$_str21)  = filename_1


** @2626 checkLengthConsistency

>> checkLengthConsistency: Passed
< = > A B C D E F G H I J K L M N O P Q R S T U V W X Y a b c d e f g h i j k l m n o p q r s t u v w x y 
** @3759 Cross Check and Update: (Concat $$_str20 $$_str21) == filename_1

>> @3579 Eval Intersection size = 2
>> @3625 at Number of elements: 1 
(Concat $$_str20 $$_str21)


>> @3387 Eval Node (isIndependence = false): @0 (Concat $$_str20 $$_str21)

>> @3520 Eval Concat: $$_str20 *concat* $$_str21

>> @3387 Eval Node (isIndependence = false): @0 $$_str20

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @0: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (1 elements)
@3768 at After all: 
uNkNoWn

>> @3229 update Equal Map
filename_1
(Concat $$_str20 $$_str21)


** 3144 Propagate node: (Concat $$_str20 $$_str21)
 parents_filtered 

eq nn1
(Concat $$_str20 $$_str21)

eq nn2
filename_1

(Concat $$_str20 $$_str21) == filename_1
extend contain nn1
$$_str20
$$_str21

extend contain nn2
filename_1

filename_0 -- $$_str11 --> $$_bool3
filename_0 -- (AutomataDef /) --> $$_bool0
filename_1 -- $$_str20 --> $$_bool6
filename_1 -- (AutomataDef .) --> $$_bool4
filename_2 -- (AutomataDef ../) --> $$_bool7
$$_str2 -- (AutomataDef /) --> $$_bool1
$$_str7 -- (AutomataDef /) --> $$_bool2
$$_str15 -- (AutomataDef .) --> $$_bool5
2700------------------------------
$$_str2 -- "/" --> (Contains $$_str2 /)
$$_str7 -- "/" --> (Contains $$_str7 /)
$$_str15 -- "." --> (Contains $$_str15 .)
---------------------
Axiom Add(@2715, Level 0):
$$_bool6
---------------------

(Concat $$_str20 $$_str21)>> all_prefix_nn1 
$$_str20

filename_1>> all_prefix_nn2 

(Concat $$_str20 $$_str21)>> all_posfix_nn1 
$$_str21

filename_1>> all_posfix_nn2 


=================================================================================
** implyEqualityForConcatMember(): @0





=================================================================================
** cb_new_eq(): @0
filename_0  = s


** @2626 checkLengthConsistency

>> checkLengthConsistency: Passed
< = > A B C D E F G H I J K L M N O P Q R S T U V W X Y a b c d e f g h i j k l m n o p q r s t u v w x y 
** @3759 Cross Check and Update: filename_0 == s

>> @3579 Eval Intersection size = 3
>> @3625 at Number of elements: 1 
(Concat $$_str10 (Concat $$_str11 $$_str12))


>> @3387 Eval Node (isIndependence = false): @0 (Concat $$_str10 (Concat $$_str11 $$_str12))

>> @3520 Eval Concat: $$_str10 *concat* (Concat $$_str11 $$_str12)

>> @3387 Eval Node (isIndependence = false): @0 $$_str10

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @0: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (1 elements)
@3768 at After all: 
uNkNoWn

>> @3229 update Equal Map
s
filename_0
(Concat $$_str10 (Concat $$_str11 $$_str12))


** 3144 Propagate node: filename_0
 parents_filtered 

eq nn1
filename_0
(Concat $$_str10 (Concat $$_str11 $$_str12))

eq nn2
s

filename_0 == s
extend contain nn1
filename_0
$$_str10
$$_str11
$$_str12

extend contain nn2
s

filename_0 -- $$_str11 --> $$_bool3
filename_0 -- (AutomataDef /) --> $$_bool0
filename_1 -- $$_str20 --> $$_bool6
filename_1 -- (AutomataDef .) --> $$_bool4
filename_2 -- (AutomataDef ../) --> $$_bool7
$$_str2 -- (AutomataDef /) --> $$_bool1
$$_str7 -- (AutomataDef /) --> $$_bool2
$$_str15 -- (AutomataDef .) --> $$_bool5
2700------------------------------
$$_str2 -- "/" --> (Contains $$_str2 /)
$$_str7 -- "/" --> (Contains $$_str7 /)
$$_str15 -- "." --> (Contains $$_str15 .)
filename_0>> all_prefix_nn1 
$$_str10

s>> all_prefix_nn2 

filename_0>> all_posfix_nn1 
$$_str12
(Concat $$_str11 $$_str12)

s>> all_posfix_nn2 


=================================================================================
** implyEqualityForConcatMember(): @0





=================================================================================
** cb_new_eq(): @0
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))  = filename_2


** @2626 checkLengthConsistency

>> checkLengthConsistency: Passed
< = > A B C D E F G H I J K L M N O P Q R S T U V W X Y a b c d e f g h i j k l m n o p q r s t u v w x y 
** @3759 Cross Check and Update: (Concat $$_str22 (Concat (AutomataDef ../) $$_str23)) == filename_2

>> @3579 Eval Intersection size = 2
>> @3625 at Number of elements: 1 
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


>> @3387 Eval Node (isIndependence = false): @0 (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))

>> @3520 Eval Concat: $$_str22 *concat* (Concat (AutomataDef ../) $$_str23)

>> @3387 Eval Node (isIndependence = false): @0 $$_str22

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @0: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (1 elements)
@3768 at After all: 
uNkNoWn

>> @3229 update Equal Map
filename_2
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


** 3144 Propagate node: (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))
 parents_filtered 

eq nn1
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))

eq nn2
filename_2

(Concat $$_str22 (Concat (AutomataDef ../) $$_str23)) == filename_2
extend contain nn1
$$_str22
$$_str23
(AutomataDef ../)

extend contain nn2
filename_2

filename_0 -- $$_str11 --> $$_bool3
filename_0 -- (AutomataDef /) --> $$_bool0
filename_1 -- $$_str20 --> $$_bool6
filename_1 -- (AutomataDef .) --> $$_bool4
filename_2 -- (AutomataDef ../) --> $$_bool7
$$_str2 -- (AutomataDef /) --> $$_bool1
$$_str7 -- (AutomataDef /) --> $$_bool2
$$_str15 -- (AutomataDef .) --> $$_bool5
2700------------------------------
$$_str2 -- "/" --> (Contains $$_str2 /)
$$_str7 -- "/" --> (Contains $$_str7 /)
$$_str15 -- "." --> (Contains $$_str15 .)
---------------------
Axiom Add(@2715, Level 0):
$$_bool7
---------------------

---------------------
Axiom Add(@2783, Level 0):
$$_bool7
---------------------

(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))>> all_prefix_nn1 
$$_str22

filename_2>> all_prefix_nn2 

(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))>> all_posfix_nn1 
$$_str23
(Concat (AutomataDef ../) $$_str23)

filename_2>> all_posfix_nn2 


=================================================================================
** implyEqualityForConcatMember(): @0


*******************************************
[PUSH]: Level = 1

*******************************************
6984 $$_bool3: (Contains filename_0 $$_str11) true
6984 $$_bool6: (Contains filename_1 $$_str20) true
6984 $$_bool7: (Contains filename_2 "../") true

*******************************************
[PUSH]: Level = 2

*******************************************
6984 $$_bool3: (Contains filename_0 $$_str11) true
6984 $$_bool6: (Contains filename_1 $$_str20) true
6984 $$_bool7: (Contains filename_2 "../") true

*******************************************
[PUSH]: Level = 3

*******************************************
6984 $$_bool3: (Contains filename_0 $$_str11) true
6984 $$_bool6: (Contains filename_1 $$_str20) true
6984 $$_bool7: (Contains filename_2 "../") true




=================================================================================
** cb_new_eq(): @3
filename_2  = $$_str20


** @2626 checkLengthConsistency

>> checkLengthConsistency: Passed

>> @3229 update Equal Map
$$_str20
filename_2
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


** 3144 Propagate node: filename_2
 parents_filtered 
(Concat $$_str20 $$_str21)



>> @3272 at __../src/StringTheory.cpp: Update Node: @3 (Concat $$_str20 $$_str21)

>> @3520 Eval Concat: $$_str20 *concat* $$_str21

>> @3387 Eval Node (isIndependence = false): @3 $$_str20

>> @3579 Eval Intersection size = 3
>> @3625 at Number of elements: 1 
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


>> @3387 Eval Node (isIndependence = false): @3 (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))

>> @3520 Eval Concat: $$_str22 *concat* (Concat (AutomataDef ../) $$_str23)

>> @3387 Eval Node (isIndependence = false): @3 $$_str22

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @3: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (1 elements)

>> @3398 Value of variable: @3: uNkNoWn 
(Concat $$_str20 $$_str21)
>> @3331 at __../src/StringTheory.cpp: updated Concat value
 uNkNoWn
eq nn1
filename_2
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))

eq nn2
$$_str20

filename_2 == $$_str20
extend contain nn1
filename_2
$$_str22
$$_str23
(AutomataDef ../)

extend contain nn2
$$_str20

filename_0 -- $$_str11 --> $$_bool3
filename_0 -- (AutomataDef /) --> $$_bool0
filename_1 -- $$_str20 --> $$_bool6
filename_1 -- (AutomataDef .) --> $$_bool4
filename_2 -- (AutomataDef ../) --> $$_bool7
$$_str2 -- (AutomataDef /) --> $$_bool1
$$_str7 -- (AutomataDef /) --> $$_bool2
$$_str15 -- (AutomataDef .) --> $$_bool5
2700------------------------------
$$_str2 -- "/" --> (Contains $$_str2 /)
$$_str7 -- "/" --> (Contains $$_str7 /)
$$_str15 -- "." --> (Contains $$_str15 .)
filename_2>> all_prefix_nn1 
$$_str22

$$_str20>> all_prefix_nn2 

filename_2>> all_posfix_nn1 
$$_str23
(Concat (AutomataDef ../) $$_str23)

$$_str20>> all_posfix_nn2 


=================================================================================
** implyEqualityForConcatMember(): @3





=================================================================================
** cb_new_eq(): @3
filename_1  = (Concat $$_str15 $$_str16)


** @2626 checkLengthConsistency

>> checkLengthConsistency: Passed
< = > A B C D E F G H I J K L M N O P Q R S T U V W X Y a b c d e f g h i j k l m n o p q r s t u v w x y 
** @3759 Cross Check and Update: filename_1 == (Concat $$_str15 $$_str16)

>> @3579 Eval Intersection size = 3
>> @3625 at Number of elements: 2 
(Concat $$_str20 $$_str21)
(Concat $$_str15 $$_str16)


>> @3387 Eval Node (isIndependence = false): @3 (Concat $$_str20 $$_str21)

>> @3520 Eval Concat: $$_str20 *concat* $$_str21

>> @3387 Eval Node (isIndependence = false): @3 $$_str20

>> @3579 Eval Intersection size = 3
>> @3625 at Number of elements: 1 
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


>> @3387 Eval Node (isIndependence = false): @3 (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))

>> @3520 Eval Concat: $$_str22 *concat* (Concat (AutomataDef ../) $$_str23)

>> @3387 Eval Node (isIndependence = false): @3 $$_str22

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @3: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (1 elements)

>> @3398 Value of variable: @3: uNkNoWn 

>> @3387 Eval Node (isIndependence = false): @3 (Concat $$_str15 $$_str16)

>> @3520 Eval Concat: $$_str15 *concat* $$_str16

>> @3387 Eval Node (isIndependence = false): @3 $$_str15

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @3: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (2 elements)
@3768 at After all: 
uNkNoWn

>> @3229 update Equal Map
(Concat $$_str15 $$_str16)
filename_1
(Concat $$_str20 $$_str21)


** 3144 Propagate node: filename_1
 parents_filtered 

eq nn1
filename_1
(Concat $$_str20 $$_str21)

eq nn2
(Concat $$_str15 $$_str16)

filename_1 == (Concat $$_str15 $$_str16)
extend contain nn1
filename_1
filename_2
$$_str20
$$_str21
$$_str22
$$_str23
(AutomataDef ../)

extend contain nn2
$$_str15
$$_str16

filename_0 -- $$_str11 --> $$_bool3
filename_0 -- (AutomataDef /) --> $$_bool0
filename_1 -- $$_str20 --> $$_bool6
filename_1 -- (AutomataDef .) --> $$_bool4
filename_2 -- (AutomataDef ../) --> $$_bool7
$$_str2 -- (AutomataDef /) --> $$_bool1
$$_str7 -- (AutomataDef /) --> $$_bool2
$$_str15 -- (AutomataDef .) --> $$_bool5
2700------------------------------
$$_str2 -- "/" --> (Contains $$_str2 /)
$$_str7 -- "/" --> (Contains $$_str7 /)
$$_str15 -- "." --> (Contains $$_str15 .)
filename_1>> all_prefix_nn1 
filename_2
$$_str20
$$_str22

>> [containRegister] Contains($$_str15, (AutomataDef ../)---------------------
Axiom Add(@1189, Level 3):
(= $$_bool8 (Contains $$_str15 (AutomataDef ../)))
---------------------

) = $$_bool8
1065 addContainRelation: $$_str15 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool8 $$_bool5)
---------------------

---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool7) (>= (Length filename_2) (Length $$_str15)))
    (not $$_bool8))
---------------------

>> [containRegister] Contains($$_str15, (AutomataDef ../)) = $$_bool8
1065 addContainRelation: $$_str15 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool8 $$_bool5)
---------------------

---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool7 (<= (Length filename_2) (Length $$_str15))) $$_bool8)
---------------------

(Concat $$_str15 $$_str16)>> all_prefix_nn2 
$$_str15

>> [containRegister] Contains(filename_2, (AutomataDef .)---------------------
Axiom Add(@1189, Level 3):
(= $$_bool9 (Contains filename_2 (AutomataDef .)))
---------------------

) = $$_bool9
1065 addContainRelation: filename_2 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool7 $$_bool9)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool5) (>= (Length $$_str15) (Length filename_2)))
    (not $$_bool9))
---------------------

>> [containRegister] Contains(filename_2, (AutomataDef .)) = $$_bool9
1065 addContainRelation: filename_2 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool7 $$_bool9)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool5 (<= (Length $$_str15) (Length filename_2))) $$_bool9)
---------------------

>> [containRegister] Contains($$_str20, (AutomataDef .)---------------------
Axiom Add(@1189, Level 3):
(= $$_bool10 (Contains $$_str20 (AutomataDef .)))
---------------------

) = $$_bool10
1065 addContainRelation: $$_str20 (AutomataDef .)
1077 addContainRelation: .
---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool5) (>= (Length $$_str15) (Length $$_str20)))
    (not $$_bool10))
---------------------

>> [containRegister] Contains($$_str20, (AutomataDef .)) = $$_bool10
1065 addContainRelation: $$_str20 (AutomataDef .)
1077 addContainRelation: .
---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool5 (<= (Length $$_str15) (Length $$_str20))) $$_bool10)
---------------------

>> [containRegister] Contains($$_str22, (AutomataDef .)---------------------
Axiom Add(@1189, Level 3):
(= $$_bool11 (Contains $$_str22 (AutomataDef .)))
---------------------

) = $$_bool11
1065 addContainRelation: $$_str22 (AutomataDef .)
1077 addContainRelation: .
---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool5) (>= (Length $$_str15) (Length $$_str22)))
    (not $$_bool11))
---------------------

>> [containRegister] Contains($$_str22, (AutomataDef .)) = $$_bool11
1065 addContainRelation: $$_str22 (AutomataDef .)
1077 addContainRelation: .
---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool5 (<= (Length $$_str15) (Length $$_str22))) $$_bool11)
---------------------

>> [containRegister] Contains(filename_2, (AutomataDef ../)) = $$_bool7
1065 addContainRelation: filename_2 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool7 $$_bool9)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool8) (>= (Length $$_str15) (Length filename_2)))
    (not $$_bool7))
---------------------

>> [containRegister] Contains(filename_2, (AutomataDef ../)) = $$_bool7
1065 addContainRelation: filename_2 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool7 $$_bool9)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool8 (<= (Length $$_str15) (Length filename_2))) $$_bool7)
---------------------

>> [containRegister] Contains($$_str20, (AutomataDef ../)---------------------
Axiom Add(@1189, Level 3):
(= $$_bool12 (Contains $$_str20 (AutomataDef ../)))
---------------------

) = $$_bool12
1065 addContainRelation: $$_str20 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool12 $$_bool10)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool8) (>= (Length $$_str15) (Length $$_str20)))
    (not $$_bool12))
---------------------

>> [containRegister] Contains($$_str20, (AutomataDef ../)) = $$_bool12
1065 addContainRelation: $$_str20 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool12 $$_bool10)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool8 (<= (Length $$_str15) (Length $$_str20))) $$_bool12)
---------------------

>> [containRegister] Contains($$_str22, (AutomataDef ../)---------------------
Axiom Add(@1189, Level 3):
(= $$_bool13 (Contains $$_str22 (AutomataDef ../)))
---------------------

) = $$_bool13
1065 addContainRelation: $$_str22 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool13 $$_bool11)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool8) (>= (Length $$_str15) (Length $$_str22)))
    (not $$_bool13))
---------------------

>> [containRegister] Contains($$_str22, (AutomataDef ../)) = $$_bool13
1065 addContainRelation: $$_str22 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool13 $$_bool11)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool8 (<= (Length $$_str15) (Length $$_str22))) $$_bool13)
---------------------

filename_1>> all_posfix_nn1 
$$_str21

(Concat $$_str15 $$_str16)>> all_posfix_nn2 
$$_str16


=================================================================================
** implyEqualityForConcatMember(): @3





=================================================================================
** cb_new_eq(): @3
filename_1  = (Concat $$_str13 (Concat (AutomataDef .) $$_str14))


** @2626 checkLengthConsistency

>> checkLengthConsistency: Passed
< = > A B C D E F G H I J K L M N O P Q R S T U V W X Y a b c d e f g h i j k l m n o p q r s t u v w x y 
** @3759 Cross Check and Update: filename_1 == (Concat $$_str13 (Concat (AutomataDef .) $$_str14))

>> @3579 Eval Intersection size = 4
>> @3625 at Number of elements: 3 
(Concat $$_str15 $$_str16)
(Concat $$_str20 $$_str21)
(Concat $$_str13 (Concat (AutomataDef .) $$_str14))


>> @3387 Eval Node (isIndependence = false): @3 (Concat $$_str15 $$_str16)

>> @3520 Eval Concat: $$_str15 *concat* $$_str16

>> @3387 Eval Node (isIndependence = false): @3 $$_str15

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @3: uNkNoWn 

>> @3387 Eval Node (isIndependence = false): @3 (Concat $$_str20 $$_str21)

>> @3520 Eval Concat: $$_str20 *concat* $$_str21

>> @3387 Eval Node (isIndependence = false): @3 $$_str20

>> @3579 Eval Intersection size = 3
>> @3625 at Number of elements: 1 
(Concat $$_str22 (Concat (AutomataDef ../) $$_str23))


>> @3387 Eval Node (isIndependence = false): @3 (Concat $$_str22 (Concat (AutomataDef ../) $$_str23))

>> @3520 Eval Concat: $$_str22 *concat* (Concat (AutomataDef ../) $$_str23)

>> @3387 Eval Node (isIndependence = false): @3 $$_str22

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @3: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (1 elements)

>> @3398 Value of variable: @3: uNkNoWn 

>> @3387 Eval Node (isIndependence = false): @3 (Concat $$_str13 (Concat (AutomataDef .) $$_str14))

>> @3520 Eval Concat: $$_str13 *concat* (Concat (AutomataDef .) $$_str14)

>> @3387 Eval Node (isIndependence = false): @3 $$_str13

>> @3579 Eval Intersection size = 1
>> @3625 at Number of elements: 0 


>> @3642 at __../src/StringTheory.cpp: UNKNOWN (0 elements)

>> @3398 Value of variable: @3: uNkNoWn 

>> @3642 at __../src/StringTheory.cpp: UNKNOWN (3 elements)
@3768 at After all: 
uNkNoWn

>> @3229 update Equal Map
(Concat $$_str13 (Concat (AutomataDef .) $$_str14))
(Concat $$_str15 $$_str16)
filename_1
(Concat $$_str20 $$_str21)


** 3144 Propagate node: filename_1
 parents_filtered 

eq nn1
filename_1
(Concat $$_str15 $$_str16)
(Concat $$_str20 $$_str21)

eq nn2
(Concat $$_str13 (Concat (AutomataDef .) $$_str14))

filename_1 == (Concat $$_str13 (Concat (AutomataDef .) $$_str14))
extend contain nn1
filename_1
filename_2
$$_str15
$$_str16
$$_str20
$$_str21
$$_str22
$$_str23
(AutomataDef ../)

extend contain nn2
$$_str13
$$_str14
(AutomataDef .)

filename_0 -- $$_str11 --> $$_bool3
filename_0 -- (AutomataDef /) --> $$_bool0
filename_1 -- $$_str20 --> $$_bool6
filename_1 -- (AutomataDef .) --> $$_bool4
filename_2 -- (AutomataDef .) --> $$_bool9
filename_2 -- (AutomataDef ../) --> $$_bool7
$$_str2 -- (AutomataDef /) --> $$_bool1
$$_str7 -- (AutomataDef /) --> $$_bool2
$$_str15 -- (AutomataDef .) --> $$_bool5
$$_str15 -- (AutomataDef ../) --> $$_bool8
$$_str20 -- (AutomataDef .) --> $$_bool10
$$_str20 -- (AutomataDef ../) --> $$_bool12
$$_str22 -- (AutomataDef .) --> $$_bool11
$$_str22 -- (AutomataDef ../) --> $$_bool13
2700------------------------------
filename_2 -- (AutomataDef .) --> (Contains filename_2 (AutomataDef .))
$$_str2 -- "/" --> (Contains $$_str2 /)
$$_str7 -- "/" --> (Contains $$_str7 /)
$$_str15 -- "." --> (Contains $$_str15 .)
$$_str15 -- (AutomataDef ../) --> (Contains $$_str15 (AutomataDef ../))
$$_str20 -- (AutomataDef .) --> (Contains $$_str20 (AutomataDef .))
$$_str20 -- (AutomataDef ../) --> (Contains $$_str20 (AutomataDef ../))
$$_str22 -- (AutomataDef .) --> (Contains $$_str22 (AutomataDef .))
$$_str22 -- (AutomataDef ../) --> (Contains $$_str22 (AutomataDef ../))
---------------------
Axiom Add(@2733, Level 3):
(= $$_bool4 true)
---------------------

---------------------
Axiom Add(@2763, Level 3):
$$_bool4
---------------------

filename_1>> all_prefix_nn1 
filename_2
$$_str15
$$_str20
$$_str22

>> [containRegister] Contains($$_str13, (AutomataDef .)---------------------
Axiom Add(@1189, Level 3):
(= $$_bool14 (Contains $$_str13 (AutomataDef .)))
---------------------

) = $$_bool14
1065 addContainRelation: $$_str13 (AutomataDef .)
1077 addContainRelation: .
---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool9) (>= (Length filename_2) (Length $$_str13)))
    (not $$_bool14))
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef .)) = $$_bool14
1065 addContainRelation: $$_str13 (AutomataDef .)
1077 addContainRelation: .
---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool9 (<= (Length filename_2) (Length $$_str13))) $$_bool14)
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef ../)---------------------
Axiom Add(@1189, Level 3):
(= $$_bool15 (Contains $$_str13 (AutomataDef ../)))
---------------------

) = $$_bool15
1065 addContainRelation: $$_str13 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool7) (>= (Length filename_2) (Length $$_str13)))
    (not $$_bool15))
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef ../)) = $$_bool15
1065 addContainRelation: $$_str13 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool7 (<= (Length filename_2) (Length $$_str13))) $$_bool15)
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef .)) = $$_bool14
1065 addContainRelation: $$_str13 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool5) (>= (Length $$_str15) (Length $$_str13)))
    (not $$_bool14))
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef .)) = $$_bool14
1065 addContainRelation: $$_str13 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool5 (<= (Length $$_str15) (Length $$_str13))) $$_bool14)
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef ../)) = $$_bool15
1065 addContainRelation: $$_str13 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool8) (>= (Length $$_str15) (Length $$_str13)))
    (not $$_bool15))
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef ../)) = $$_bool15
1065 addContainRelation: $$_str13 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool8 (<= (Length $$_str15) (Length $$_str13))) $$_bool15)
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef .)) = $$_bool14
1065 addContainRelation: $$_str13 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool10) (>= (Length $$_str20) (Length $$_str13)))
    (not $$_bool14))
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef .)) = $$_bool14
1065 addContainRelation: $$_str13 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool10 (<= (Length $$_str20) (Length $$_str13))) $$_bool14)
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef ../)) = $$_bool15
1065 addContainRelation: $$_str13 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool12) (>= (Length $$_str20) (Length $$_str13)))
    (not $$_bool15))
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef ../)) = $$_bool15
1065 addContainRelation: $$_str13 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool12 (<= (Length $$_str20) (Length $$_str13))) $$_bool15)
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef .)) = $$_bool14
1065 addContainRelation: $$_str13 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool11) (>= (Length $$_str22) (Length $$_str13)))
    (not $$_bool14))
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef .)) = $$_bool14
1065 addContainRelation: $$_str13 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool11 (<= (Length $$_str22) (Length $$_str13))) $$_bool14)
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef ../)) = $$_bool15
1065 addContainRelation: $$_str13 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3045, Level 3):
(=> (and (not $$_bool13) (>= (Length $$_str22) (Length $$_str13)))
    (not $$_bool15))
---------------------

>> [containRegister] Contains($$_str13, (AutomataDef ../)) = $$_bool15
1065 addContainRelation: $$_str13 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool15 $$_bool14)
---------------------

---------------------
Axiom Add(@3054, Level 3):
(=> (and $$_bool13 (<= (Length $$_str22) (Length $$_str13))) $$_bool15)
---------------------

(Concat $$_str13 (Concat (AutomataDef .) $$_str14))>> all_prefix_nn2 
$$_str13

>> [containRegister] Contains(filename_2, (AutomataDef .)) = $$_bool9
1065 addContainRelation: filename_2 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool7 $$_bool9)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool14) (>= (Length $$_str13) (Length filename_2)))
    (not $$_bool9))
---------------------

>> [containRegister] Contains(filename_2, (AutomataDef .)) = $$_bool9
1065 addContainRelation: filename_2 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool7 $$_bool9)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool14 (<= (Length $$_str13) (Length filename_2))) $$_bool9)
---------------------

>> [containRegister] Contains($$_str15, (AutomataDef .)) = $$_bool5
1065 addContainRelation: $$_str15 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool8 $$_bool5)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool14) (>= (Length $$_str13) (Length $$_str15)))
    (not $$_bool5))
---------------------

>> [containRegister] Contains($$_str15, (AutomataDef .)) = $$_bool5
1065 addContainRelation: $$_str15 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool8 $$_bool5)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool14 (<= (Length $$_str13) (Length $$_str15))) $$_bool5)
---------------------

>> [containRegister] Contains($$_str20, (AutomataDef .)) = $$_bool10
1065 addContainRelation: $$_str20 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool12 $$_bool10)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool14) (>= (Length $$_str13) (Length $$_str20)))
    (not $$_bool10))
---------------------

>> [containRegister] Contains($$_str20, (AutomataDef .)) = $$_bool10
1065 addContainRelation: $$_str20 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool12 $$_bool10)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool14 (<= (Length $$_str13) (Length $$_str20))) $$_bool10)
---------------------

>> [containRegister] Contains($$_str22, (AutomataDef .)) = $$_bool11
1065 addContainRelation: $$_str22 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool13 $$_bool11)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool14) (>= (Length $$_str13) (Length $$_str22)))
    (not $$_bool11))
---------------------

>> [containRegister] Contains($$_str22, (AutomataDef .)) = $$_bool11
1065 addContainRelation: $$_str22 (AutomataDef .)
1077 addContainRelation: .
1083 checking contains . vs ../
---------------------
Axiom Add(@1087, Level 3):
(=> $$_bool13 $$_bool11)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool14 (<= (Length $$_str13) (Length $$_str22))) $$_bool11)
---------------------

>> [containRegister] Contains(filename_2, (AutomataDef ../)) = $$_bool7
1065 addContainRelation: filename_2 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool7 $$_bool9)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool15) (>= (Length $$_str13) (Length filename_2)))
    (not $$_bool7))
---------------------

>> [containRegister] Contains(filename_2, (AutomataDef ../)) = $$_bool7
1065 addContainRelation: filename_2 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool7 $$_bool9)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool15 (<= (Length $$_str13) (Length filename_2))) $$_bool7)
---------------------

>> [containRegister] Contains($$_str15, (AutomataDef ../)) = $$_bool8
1065 addContainRelation: $$_str15 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool8 $$_bool5)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool15) (>= (Length $$_str13) (Length $$_str15)))
    (not $$_bool8))
---------------------

>> [containRegister] Contains($$_str15, (AutomataDef ../)) = $$_bool8
1065 addContainRelation: $$_str15 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool8 $$_bool5)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool15 (<= (Length $$_str13) (Length $$_str15))) $$_bool8)
---------------------

>> [containRegister] Contains($$_str20, (AutomataDef ../)) = $$_bool12
1065 addContainRelation: $$_str20 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool12 $$_bool10)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool15) (>= (Length $$_str13) (Length $$_str20)))
    (not $$_bool12))
---------------------

>> [containRegister] Contains($$_str20, (AutomataDef ../)) = $$_bool12
1065 addContainRelation: $$_str20 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool12 $$_bool10)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool15 (<= (Length $$_str13) (Length $$_str20))) $$_bool12)
---------------------

>> [containRegister] Contains($$_str22, (AutomataDef ../)) = $$_bool13
1065 addContainRelation: $$_str22 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool13 $$_bool11)
---------------------

---------------------
Axiom Add(@3077, Level 3):
(=> (and (not $$_bool15) (>= (Length $$_str13) (Length $$_str22)))
    (not $$_bool13))
---------------------

>> [containRegister] Contains($$_str22, (AutomataDef ../)) = $$_bool13
1065 addContainRelation: $$_str22 (AutomataDef ../)
1077 addContainRelation: ../
1083 checking contains ../ vs .
---------------------
Axiom Add(@1085, Level 3):
(=> $$_bool13 $$_bool11)
---------------------

---------------------
Axiom Add(@3086, Level 3):
(=> (and $$_bool15 (<= (Length $$_str13) (Length $$_str22))) $$_bool13)
---------------------

filename_1>> all_posfix_nn1 
$$_str16
$$_str21

(Concat $$_str13 (Concat (AutomataDef .) $$_str14))>> all_posfix_nn2 
$$_str14
(Concat (AutomataDef .) $$_str14)


=================================================================================
** implyEqualityForConcatMember(): @3

New disequality: $$_str15 != (Concat $$_str17 (Concat (AutomataDef .) $$_str18))

*******************************************
[POP]: Level = 2

*******************************************
Remove in internalVarMap
Remove in equalMap
Remove in length_LanguageMap

*******************************************
[POP]: Level = 1

*******************************************
Remove in internalVarMap
Remove in equalMap
Remove in length_LanguageMap

*******************************************
[POP]: Level = 0

*******************************************
Remove in internalVarMap
Remove in equalMap
Remove in length_LanguageMap

** Reset():

** Delete()
