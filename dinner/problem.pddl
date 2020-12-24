(define (problem dinner1)
    (:domain dinner)
        (:init
        (S B B) (S C A) (S B C)
        (R B B) (R B C))
    (:goal (and (R C C))))
