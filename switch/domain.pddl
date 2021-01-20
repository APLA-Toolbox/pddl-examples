(define (domain SWITCH)
    (:requirements :strips)
    (:predicates (leftOf ?x ?y) (left ?x) (right ?x))
    (:action switch-left
    :parameters (?x ?y ?z)
    :precondition (and (left ?x) (leftOf ?x ?y) (leftOf ?y ?z))
    :effect (and (left ?y ) (not (left ?x))
            (leftOf ?y ?x) (leftOf ?x ?z)
            (not (leftOf ?x ?y)) (not (leftOf ?y ?z)))
    )

    (:action switch-right
    :parameters (?x ?y ?z)
    :precondition (and (leftOf ?x ?y) (leftOf ?y ?z) (right ?z))
    :effect (and (leftOf ?x ?z) (leftOf ?z ?y)
            (not (leftOf ?x ?y)) (not (leftOf ?y ?z))
            (right ?y) (not (right ?z)))
    )
)
