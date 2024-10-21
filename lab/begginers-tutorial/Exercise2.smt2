(set-logic ALL)
(declare-const X Int)

(assert (= (mod (* X 5) 256) 1))

(check-sat)
(get-model)