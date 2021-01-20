(define (domain pallet)
	(:requirements :strips)
	(:predicates (on-pallet ?x)
                     (on-floor ?x)
                     (rbt-holds ?x)
		     (out-of-room ?x)
                     (clear-pallet)
                     (clear-robot)
        )
	(:action pickup-pallet
                  :parameters(?ob)
                  :precondition (and (on-pallet ?ob) (clear-robot) (not (clear-pallet)))
		  :effect (and (rbt-holds ?ob) (not (on-pallet ?ob)) (not (clear-robot)) (clear-pallet))
        )

	(:action pickup-room
                  :parameters(?ob)
                  :precondition (and (on-floor ?ob) (clear-robot))
		  :effect (and (rbt-holds ?ob) (not (on-floor ?ob)) (not (clear-robot)))
        )

	(:action drop-floor
                  :parameters(?ob)
                  :precondition (and (rbt-holds ?ob) (not (clear-robot)))
		  :effect (and (not (rbt-holds ?ob)) (on-floor ?ob) (clear-robot))
        )

	(:action drop-pallet
                  :parameters(?ob)
                  :precondition (and (rbt-holds ?ob) (not (clear-robot)) (clear-pallet))
		  :effect (and (not (rbt-holds ?ob)) (on-pallet ?ob) (clear-robot) (not (clear-pallet)))
        )

	(:action press-switch
                  :parameters(?ob)
                  :precondition (and (not (clear-pallet)) (on-pallet ?ob))
		  :effect (and (out-of-room ?ob) (not (on-pallet ?ob)) (clear-pallet))
        )
)
			
			
