(set-logic QF_LRA)

(declare-const a Real)
(declare-const b Real)

(assert (= (+ a 10.0) (* 2.0 b)))
(assert (= (+ b 20.0) (* 2.0 a)))

(check-sat)
(get-model)