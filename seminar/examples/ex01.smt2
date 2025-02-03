(set-logic QF_S)
(declare-fun x () String)
(declare-fun y () String)
(declare-fun z () String)

; Constraints on the variables
(assert (str.in_re x (re.* (re.range "a" "a"))))   ; x \in a^*
(assert (str.in_re y (re.++ (re.+ (re.range "a" "a")) (re.+ (re.range "b" "b")))))  ; y \in a^+b^+
(assert (str.in_re z (re.* (re.range "b" "b"))))   ; z \in b^*

; Main equation constraint
(assert (= (str.++ z y x) (str.++ x x z)))  ; zyx = xxz

(check-sat)
