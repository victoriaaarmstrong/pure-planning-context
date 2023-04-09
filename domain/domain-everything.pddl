(define (domain restaurant-picker)

    (:requirements :conditional-effects :negative-preconditions :equality :adl :non-deterministic)
    
    (:predicates
        ; This predicate indicates whether or not we know an objects value - not what the value is, just if we know it or not
        (know ?x)
        
        ; This predicate indicates whether or not a user wants to change any of the above predicates. Again, info isn't stored, just the T/F intention. 
        (want-to-change)

        ; This predicates indicates if we've got all of the information we need
        (goal)
    )


    ;; This action is equivalent to asking the user for a specific piece of information, encoded by the object x 
    ;; They might tell the agent this information, or they might not. 
    (:action get

        :parameters (?x)

        :precondition (and
            ; We don't have a value for this object yet
            (not (know ?x))
        )

        :effect (and
            ; The user either tells us the object value, or they don't
            (oneof 
                (know ?x)
                (and)
            )
            (forall (?y) 
                (oneof 
                    (know ?y)
                    (and)
                )
            )    
        )
    )


    ; This action is equivalent to asking the user what details they want to change, after they've indicated that they want to change some of the information they've previously given 
    (:action change-details

        :parameters ()

        :precondition (and 
            ; We've determined that there is infact some information that the user wants to change, but we don't know what they might say
            (want-to-change)
        )

        :effect(and
            ; They could update any value
            (forall (?x) 
                (oneof
                    (not (know ?x))
                    (and)
                )
            )
            ; Reset want-to-change back to false so that the anything-else question can be triggered again
            (not (want-to-change))
        )
    )


    ; This action is equivalent to asking checking that all the information has been given, as well as checking if the user has anything they'd like to change or add
    (:action anything-else

        :parameters ()

        :precondition (and
            ; We know the value for every single object
            (forall (?x) (know ?x))

            ; Make sure there isn't anything else we want to change
            (not (want-to-change))
        )

        :effect (and
            ; The user either tells us there is something they want to change, or they're completely satisfied and we've reached the goal 
            (oneof
                (goal)
                (want-to-change)
            )
        )
    )
)
