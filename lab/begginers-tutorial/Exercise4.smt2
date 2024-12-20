(set-logic QF_IDL)
(set-option :produce-models true)

(declare-const j11 Int)
(declare-const j12 Int) 
(declare-const j21 Int)
(declare-const j22 Int)
(declare-const j31 Int)
(declare-const j32 Int)

(assert (and (>= j11 0) (>= j12 0) (>= j21 0) (>= j22 0) (>= j31 0) (>= j32 0)))
(assert (and (>= (- j12 j11) 10) (>= (- j22 j21) 20) (>= (- j32 j31) 5)))
(assert (and (or (>= (- j22 j11) 10) (>= (- j11 j22) 5))
             (or (>= (- j31 j11) 10) (>= (- j11 j31) 5))
             (or (>= (- j31 j22) 5) (>= (- j22 j31) 5))))
(assert (and (or (>= (- j21 j12) 5) (>= (- j12 j21) 20))
             (or (>= (- j32 j12) 5) (>= (- j12 j32) 5))
             (or (>= (- j32 j21) 20) (>= (- j21 j32) 5))))
(assert (and (<= j12 25) (<= j22 25) (<= j32 25)))
  
(check-sat)
(get-model)

; NOT DONE YET