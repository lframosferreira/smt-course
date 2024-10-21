(set-logic QF_BV)

(declare-const x (_ BitVec 32))

(define-fun abs ((x (_ BitVec 32))) (_ BitVec 32) (ite (bvslt x (_ bv0 32)) (bvneg x) x))

(define-fun xrs () (_ BitVec 32) (bvashr x (_ bv31 32)))

(define-fun abs1 ((x (_ BitVec 32))) (_ BitVec 32) (bvsub (bvxor x xrs) xrs))
(define-fun abs3 ((x (_ BitVec 32))) (_ BitVec 32) (bvsub (x (bvand (bvshl x (_ bv1 32) xrs))))

(assert (distinct (abs x) (abs3 x)))

(check-sat)