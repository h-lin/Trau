(declare-fun PCTEMP_LHS_1 () Bool)
(declare-fun PCTEMP_LHS_3 () String)
(declare-fun PCTEMP_LHS_4 () String)
(declare-fun PCTEMP_LHS_4_idx_0 () String)
(declare-fun PCTEMP_LHS_5 () String)
(declare-fun T0_24 () String)
(declare-fun T_12 () Bool)
(declare-fun T_13 () Bool)
(declare-fun T_14 () Bool)
(declare-fun T_15 () Bool)
(declare-fun T_16 () Bool)
(declare-fun T_17 () Bool)
(declare-fun T_18 () Bool)
(declare-fun T_19 () Bool)
(declare-fun T_1a () Bool)
(declare-fun T_1b () Bool)
(declare-fun T_1c () Bool)
(declare-fun T_1d () Bool)
(declare-fun T_1e () Bool)
(declare-fun T_1f () Bool)
(declare-fun T_2 () Bool)
(declare-fun T_20 () Bool)
(declare-fun T_21 () Bool)
(declare-fun T_22 () Bool)
(declare-fun T_23 () Bool)
(declare-fun T_24 () Bool)
(declare-fun T_25 () Bool)
(declare-fun T_26 () Bool)
(declare-fun T_27 () Bool)
(declare-fun T_28 () Bool)
(declare-fun T_29 () Bool)
(declare-fun T_2a () Bool)
(declare-fun T_2b () Bool)
(declare-fun T_2c () Bool)
(declare-fun T_2d () Bool)
(declare-fun T_2e () Bool)
(declare-fun T_2f () Bool)
(declare-fun T_3 () Int)
(declare-fun T_30 () Bool)
(declare-fun T_31 () Bool)
(declare-fun T_32 () Bool)
(declare-fun T_33 () Bool)
(declare-fun T_34 () Bool)
(declare-fun T_35 () Bool)
(declare-fun T_36 () Bool)
(declare-fun T_37 () Bool)
(declare-fun T_38 () Bool)
(declare-fun T_39 () Bool)
(declare-fun T_3a () Bool)
(declare-fun T_3b () Bool)
(declare-fun T_3c () Bool)
(declare-fun T_3d () Bool)
(declare-fun T_3e () Bool)
(declare-fun T_3f () Bool)
(declare-fun T_4 () Int)
(declare-fun T_40 () Bool)
(declare-fun T_41 () Bool)
(declare-fun T_42 () Int)
(declare-fun T_43 () Bool)
(declare-fun T_44 () Bool)
(declare-fun T_6 () Int)
(declare-fun T_7 () Bool)
(declare-fun T_8 () Bool)
(declare-fun T_9 () Int)
(declare-fun T_a () Bool)
(declare-fun T_b () Bool)
(declare-fun T_c () Int)
(declare-fun T_d () Bool)
(declare-fun T_e () Bool)
(declare-fun var_0xINPUT_176608 () String)
(assert (= T_2 (not PCTEMP_LHS_1)))
(assert T_2)
(assert (= T_3 (Length var_0xINPUT_176608)))
(assert (= T_4 (div T_3 10)))
(assert (= T_6 (Length var_0xINPUT_176608)))
(assert (= T_7 (< 70 T_6)))
(assert (= T_8 (not T_7)))
(assert T_8)
(assert (= T_9 (Length var_0xINPUT_176608)))
(assert (= T_a (< 70 T_9)))
(assert (= T_b (not T_a)))
(assert T_b)
(assert (= T_c (Length var_0xINPUT_176608)))
(assert (= T_d (< 70 T_c)))
(assert (= T_e (not T_d)))
(assert T_e)
(assert (= PCTEMP_LHS_3 var_0xINPUT_176608))
(assert (= T0_24 PCTEMP_LHS_4_idx_0))
(assert (= T0_24 PCTEMP_LHS_3))
(assert (= T_12 (= PCTEMP_LHS_5 "[object")))
(assert (= T_13 (not T_12)))
(assert T_13)
(assert (= T_15 (not T_14)))
(assert T_15)
(assert (= T_17 (not T_16)))
(assert T_17)
(assert (= T_19 (not T_18)))
(assert T_19)
(assert (= T_1b (not T_1a)))
(assert T_1b)
(assert (= T_1d (not T_1c)))
(assert T_1d)
(assert (= T_1f (not T_1e)))
(assert T_1f)
(assert (= T_21 (not T_20)))
(assert T_21)
(assert (= T_23 (not T_22)))
(assert T_23)
(assert (= T_25 (not T_24)))
(assert T_25)
(assert (= T_27 (not T_26)))
(assert T_27)
(assert (= T_29 (not T_28)))
(assert T_29)
(assert (= T_2b (not T_2a)))
(assert T_2b)
(assert (= T_2d (not T_2c)))
(assert T_2d)
(assert (= T_2f (not T_2e)))
(assert T_2f)
(assert (= T_31 (not T_30)))
(assert T_31)
(assert (= T_33 (not T_32)))
(assert T_33)
(assert (= T_35 (not T_34)))
(assert T_35)
(assert (= T_37 (not T_36)))
(assert T_37)
(assert (= T_39 (not T_38)))
(assert T_39)
(assert (= T_3b (not T_3a)))
(assert T_3b)
(assert (= T_3d (not T_3c)))
(assert T_3d)
(assert (= T_3f (not T_3e)))
(assert T_3f)
(assert (= T_41 (not T_40)))
(assert T_41)
(assert (= T_42 (Length PCTEMP_LHS_4)))
(assert (= T_43 (< 0 T_42)))
(assert (= T_44 (not T_43)))
(assert T_44)
(check-sat)
