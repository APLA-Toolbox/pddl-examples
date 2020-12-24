(define (problem cargo1)
  (:domain cargo)
  (:objects c1 c2 jfk sfo p1 p2)

  (:init (airport jfk) (airport sfo)
         (plane p1) (plane p2)
         (at-airport p1 jfk) (at-airport p2 sfo)
         (cargo c1) (cargo c2)
         (at-airport c1 sfo) (at-airport c2 jfk)
         (in c2 p1) (out c1))

  (:goal (and (at-airport c1 jfk) (out c1) (at-airport c2 sfo) (out c2))))
