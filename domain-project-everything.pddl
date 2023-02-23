(define (domain restaurant-picker)

    (:requirements :conditional-effects :negative-preconditions :equality :adl :non-deterministic)

    (:predicates
        ; These predicates summarize the information we want to get from the users. We don't store the value, just whether or not we got that information.
        (know-location)
        (know-phone-number)
        (know-cuisine)
        (know-have-allergy)
        (know-food-restriction)
        (know-budget)
        (know-outing-type)
        (know-conflict)
        (know-restaurant)

        ; This predicate indicates whether or not a user wants to change any of the above predicates. Again, info isn't stored, just the T/F intention. 
        (want-to-change)

        ; This predicates indicates if we've got all of the information we need
        (goal)
    )


    ;; This action is equivalent to asking the user for the location and they might tell the agent the location, or they might not.
    (:action get-location

        :parameters ()

        :precondition (and
            ; We don't have a value for location
            (not (know-location))
        )

        :effect (and
            ; The user either tells us the location, or doesn't
            (oneof
                (know-location)
                (and)
            )
            ; But they might also tell us the phone number, or not...
            (oneof 
                (when 
                    (not (know-phone-number))
                    (know-phone-number)
                )
                (and)
            )
            ; ... or cuisine, or not...
            (oneof 
                (when 
                    (not (know-cuisine))
                    (know-cuisine)
                )
                (and)
            )
            ; ... or allergy(s), or not...
            (oneof 
                (when 
                    (not (know-have-allergy))
                    (know-have-allergy)
                )
                (and)
            )
            ; ... or food restriction(s), or not...
            (oneof 
                (when 
                    (not (know-food-restriction))
                    (know-food-restriction)
                )
                (and)
            )
            ; ... or budget, or not...
            (oneof 
                (when 
                    (not (know-budget))
                    (know-budget)
                )
                (and)
            )
            ; ... or outing type, or not...
            (oneof 
                (when 
                    (not (know-outing-type))
                    (know-outing-type)
                )
                (and)
            )
            ; ... or conflict, or not...
            (oneof 
                (when 
                    (not (know-conflict))
                    (know-conflict)
                )
                (and)
            )
            ; ... or restaurant, or not
            (oneof 
                (when 
                    (not (know-restaurant))
                    (know-restaurant)
                )
                (and)
            )
        )
    )


    ;; This action is equivalent to asking the user for the phone number and they might tell the agent the phone number, or they might not. 
    (:action get-phone-number

        :parameters ()

        :precondition (and
            ; We don't have a value for phone number
            (not (know-phone-number))
        )

        :effect (and
            ; The user either tells us the phone number, or doesn't
            (oneof 
                (know-phone-number)
                (and)
            )
            ; But they might also tell us the location, or not...
            (oneof 
                (when 
                    (not (know-location))
                    (know-location)
                )
                (and)
            )
            ; ... or budget, or not...
            (oneof
                (when 
                    (not (know-budget))
                    (know-budget)
                )
                (and)
            )
            ; ... or outing type, or not...
            (oneof 
                (when 
                    (not (know-outing-type))
                    (know-outing-type)
                )
                (and)
            )
            ; ... or conflict, or not...
            (oneof 
                (when 
                    (not (know-conflict))
                    (know-conflict)
                )
                (and)
            )
            ; ... or restaurant, or not...
            (oneof 
                (when 
                    (not (know-restaurant))
                    (know-restaurant)
                )
                (and)
            )
            ; ... or cuisine, or not...
            (oneof 
                (when 
                    (not (know-cuisine))
                    (know-cuisine)
                )
                (and)
            )
            ; ... or allergy(s), or not...
            (oneof 
                (when 
                    (not (know-have-allergy))
                    (know-have-allergy)
                )
                (and)
            )
            ; ... or food restriction(s), or not
            (oneof 
                (when 
                    (not (know-food-restriction))
                    (know-food-restriction)
                )
                (and)
            )
        )
    )


    ;; This action is equivalent to asking the user for the cuisine and they might tell the agent the cuisine, or they might not. 
    (:action get-cuisine

        :parameters ()

        :precondition (and
            ; We don't have a value for cuisine
            (not (know-cuisine))
        )

        :effect (and 
            ; The user either tells us the cuisine, or doesn't
            (oneof
                (know-cuisine)
                (and)
            )
            ; But they might also tell us the phone number, or not...
            (oneof 
                (when 
                    (not (know-phone-number))
                    (know-phone-number)
                )
                (and)
            )
            ; ... or location, or not...
            (oneof 
                (when 
                    (not (know-location))
                    (know-location)
                )
                (and)
            )
            ; ... or allergy(s), or not...
            (oneof 
                (when 
                    (not (know-have-allergy))
                    (know-have-allergy)
                )
                (and)
            )
            ; ... or food restriction(s), or not...
            (oneof 
                (when 
                    (not (know-food-restriction))
                    (know-food-restriction)
                )
                (and)
            )
            ; ... or budget, or not...
            (oneof 
                (when 
                    (not (know-budget))
                    (know-budget)
                )
                (and)
            )
            ; ... or outing type, or not...
            (oneof 
                (when 
                    (not (know-outing-type))
                    (know-outing-type)
                )
                (and)
            )
            ; ... or conflict, or not...
            (oneof 
                (when 
                    (not (know-conflict))
                    (know-conflict)
                )
                (and)
            )
            ; ... or restaurant, or not
            (oneof 
                (when 
                    (not (know-restaurant))
                    (know-restaurant)
                )
                (and)
            )
    )


    ;; This action is equivalent to asking the user for the allergy(s) and they might tell the agent the allergy(s) or they might not. 
    (:action get-have-allergy

        :parameters ()

        :precondition (and
            ; We don't have a value for allergy(s)
            (not (know-have-allergy))
        )

        :effect (and 
            ; The user either tells us the allergy(s), or doesn't
            (oneof
                (know-have-allergy)
                (and)
            )
            ; But they might also tell us the phone number, or not...
            (oneof 
                (when 
                    (not (know-phone-number))
                    (know-phone-number)
                )
                (and)
            )
            ; ... or location, or not...
            (oneof 
                (when 
                    (not (know-location))
                    (know-location)
                )
                (and)
            )
            ; ... or cuisine, or not...
            (oneof 
                (when 
                    (not (know-cuisine))
                    (know-cuisine)
                )
                (and)
            )
            ; ... or food restriction(s), or not...
            (oneof 
                (when 
                    (not (know-food-restriction))
                    (know-food-restriction)
                )
                (and)
            )
            ; ... or budget, or not...
            (oneof 
                (when 
                    (not (know-budget))
                    (know-budget)
                )
                (and)
            )
            ; ... or outing type, or not...
            (oneof 
                (when 
                    (not (know-outing-type))
                    (know-outing-type)
                )
                (and)
            )
            ; ... or conflict, or not...
            (oneof 
                (when 
                    (not (know-conflict))
                    (know-conflict)
                )
                (and)
            )
            ; ... or restaurant, or not
            (oneof 
                (when 
                    (not (know-restaurant))
                    (know-restaurant)
                )
                (and)
            )
        )
    )


    ;; This action is equivalent to asking the user for the food restriction(s) and they might tell the agent the food restriction(s), or they might not.
    (:action get-food-restriction

        :parameters ()

        :precondition (and
            ; We don't have a value for food restriction(s)
            (not (know-food-restriction))
        )

        :effect (and 
            ; The user either tells us the food restriction(s), or doesn't
            (oneof
                (know-food-restriction)
                (and)
            )
             ; But they might also tell us the phone number, or not...
            (oneof 
                (when 
                    (not (know-phone-number))
                    (know-phone-number)
                )
                (and)
            )
            ; ... or cuisine, or not...
            (oneof 
                (when 
                    (not (know-cuisine))
                    (know-cuisine)
                )
                (and)
            )
            ; ... or allergy(s), or not...
            (oneof 
                (when 
                    (not (know-have-allergy))
                    (know-have-allergy)
                )
                (and)
            )
            ; ... or location, or not...
            (oneof 
                (when 
                    (not (know-location))
                    (know-location)
                )
                (and)
            )
            ; ... or budget, or not...
            (oneof 
                (when 
                    (not (know-budget))
                    (know-budget)
                )
                (and)
            )
            ; ... or outing type, or not...
            (oneof 
                (when 
                    (not (know-outing-type))
                    (know-outing-type)
                )
                (and)
            )
            ; ... or conflict, or not...
            (oneof 
                (when 
                    (not (know-conflict))
                    (know-conflict)
                )
                (and)
            )
            ; ... or restaurant, or not
            (oneof 
                (when 
                    (not (know-restaurant))
                    (know-restaurant)
                )
                (and)
            )
        )
    )


    ;; This action is equivalent to asking the user for the budget and they might tell the agent the budget, or they might not. 
    (:action get-budget

        :parameters ()

        :precondition (and
            ; We don't have a value for budget
            (not (know-budget))
        )

        :effect (and 
            ; The user either tells us the budget, or doesn't
            (oneof
                (know-budget)
                (and)
            )
            ; But they might also tell us the phone number, or not...
            (oneof 
                (when 
                    (not (know-phone-number))
                    (know-phone-number)
                )
                (and)
            )
            ; ... or cuisine, or not...
            (oneof 
                (when 
                    (not (know-cuisine))
                    (know-cuisine)
                )
                (and)
            )
            ; ... or allergy(s), or not...
            (oneof 
                (when 
                    (not (know-have-allergy))
                    (know-have-allergy)
                )
                (and)
            )
            ; ... or food restriction(s), or not...
            (oneof 
                (when 
                    (not (know-food-restriction))
                    (know-food-restriction)
                )
                (and)
            )
            ; ... or location, or not...
            (oneof 
                (when 
                    (not (know-location))
                    (know-loocation)
                )
                (and)
            )
            ; ... or outing type, or not...
            (oneof 
                (when 
                    (not (know-outing-type))
                    (know-outing-type)
                )
                (and)
            )
            ; ... or conflict, or not...
            (oneof 
                (when 
                    (not (know-conflict))
                    (know-conflict)
                )
                (and)
            )
            ; ... or restaurant, or not
            (oneof 
                (when 
                    (not (know-restaurant))
                    (know-restaurant)
                )
                (and)
            )
        )
    )


    ;; This action is equivalent to asking the user for the outing type and they might tell the agent the outing type, or they might not. 
    (:action get-outing-type

        :parameters ()

        :precondition (and
            ; We don't have a value for outing type
            (not (know-outing-type))
        )

        :effect (and
            ; The user either tells us the outing type, or doesn't
            (oneof
                (know-outing-type)
                (and)
            )
             ; But they might also tell us the phone number, or not...
            (oneof 
                (when 
                    (not (know-phone-number))
                    (know-phone-number)
                )
                (and)
            )
            ; ... or cuisine, or not...
            (oneof 
                (when 
                    (not (know-cuisine))
                    (know-cuisine)
                )
                (and)
            )
            ; ... or allergy(s), or not...
            (oneof 
                (when 
                    (not (know-have-allergy))
                    (know-have-allergy)
                )
                (and)
            )
            ; ... or food restriction(s), or not...
            (oneof 
                (when 
                    (not (know-food-restriction))
                    (know-food-restriction)
                )
                (and)
            )
            ; ... or budget, or not...
            (oneof 
                (when 
                    (not (know-budget))
                    (know-budget)
                )
                (and)
            )
            ; ... or location, or not...
            (oneof 
                (when 
                    (not (know-location))
                    (know-location)
                )
                (and)
            )
            ; ... or conflict, or not...
            (oneof 
                (when 
                    (not (know-conflict))
                    (know-conflict)
                )
                (and)
            )
            ; ... or restaurant, or not
            (oneof 
                (when 
                    (not (know-restaurant))
                    (know-restaurant)
                )
                (and)
            )
        )
    )


    ;; This action is equivalent to asking the user for the conflict(s) and they might tell the agent the conflict(s), or they might not. 
    (:action get-conflict

        :parameters ()

        :precondition (and
            ; We don't have a value for conflict(s)
            (not (know-conflict))
        )

        :effect (and
            ; The user either tells us the conflict(s), or doesn't
            (oneof
                (know-conflict)
                (and)
            )
             ; But they might also tell us the phone number, or not...
            (oneof 
                (when 
                    (not (know-phone-number))
                    (know-phone-number)
                )
                (and)
            )
            ; ... or cuisine, or not...
            (oneof 
                (when 
                    (not (know-cuisine))
                    (know-cuisine)
                )
                (and)
            )
            ; ... or allergy(s), or not...
            (oneof 
                (when 
                    (not (know-have-allergy))
                    (know-have-allergy)
                )
                (and)
            )
            ; ... or food restriction(s), or not...
            (oneof 
                (when 
                    (not (know-food-restriction))
                    (know-food-restriction)
                )
                (and)
            )
            ; ... or budget, or not...
            (oneof 
                (when 
                    (not (know-budget))
                    (know-budget)
                )
                (and)
            )
            ; ... or outing type, or not...
            (oneof 
                (when 
                    (not (know-outing-type))
                    (know-outing-type)
                )
                (and)
            )
            ; ... or location, or not...
            (oneof 
                (when 
                    (not (know-location))
                    (know-location)
                )
                (and)
            )
            ; ... or restaurant, or not
            (oneof 
                (when 
                    (not (know-restaurant))
                    (know-restaurant)
                )
                (and)
            )
        )
    )


    ;; This action is equivalent to asking the user for the restaurant and they might tell the agent the restaurant, or they might not. 
    (:action get-restaurant

        :parameters ()

        :precondition (and
            ; We don't have a value for restaurant
            (not (know-restaurant))
        )

        :effect (and 
            ; The user either tells us the restaurant, or doesn't
            (oneof
                (know-restaurant)
                (and)
            )
             ; But they might also tell us the phone number, or not...
            (oneof 
                (when 
                    (not (know-phone-number))
                    (know-phone-number)
                )
                (and)
            )
            ; ... or cuisine, or not...
            (oneof 
                (when 
                    (not (know-cuisine))
                    (know-cuisine)
                )
                (and)
            )
            ; ... or allergy(s), or not...
            (oneof 
                (when 
                    (not (know-have-allergy))
                    (know-have-allergy)
                )
                (and)
            )
            ; ... or food restriction(s), or not...
            (oneof 
                (when 
                    (not (know-food-restriction))
                    (know-food-restriction)
                )
                (and)
            )
            ; ... or budget, or not...
            (oneof 
                (when 
                    (not (know-budget))
                    (know-budget)
                )
                (and)
            )
            ; ... or outing type, or not...
            (oneof 
                (when 
                    (not (know-outing-type))
                    (know-outing-type)
                )
                (and)
            )
            ; ... or conflict, or not...
            (oneof 
                (when 
                    (not (know-conflict))
                    (know-conflict)
                )
                (and)
            )
            ; ... or location, or not
            (oneof 
                (when 
                    (not (know-location))
                    (know-location)
                )
                (and)
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
            ; They  could say any of the following!
            (oneof
                (not (know-location))
                (and)
            )
            (oneof 
                (not (know-phone-number))
                (and)
            )
            (oneof
                (not (know-cuisine))
                (and)
            )
            (oneof
                (not (know-have-allergy))
                (and)
            )
            (oneof
                (not (know-food-restriction))
                (and)
            )
            (oneof
                (not (know-budget))
                (and)
            )
            (oneof
                (not (know-outing-type))
                (and)
            )
            (oneof
                (not (know-conflict))
                (and)
            )
            (oneof
                (not (know-restaurant))
                (and)
            )

            ; Reset want-to-change back to false so that the anything-else question can be triggered again
            (not (want-to-change))
        )
    )


    ; This action is equivalent to asking checking that all the information has been given, as well as checking if the user has anything they'd like to change or add
    (:action anything-else

        :parameters ()

        :precondition (and
            ; We know the value for every single predicate (i.e. each one evaluates to true)
            (know-location)
            (know-phone-number)
            (know-cuisine)
            (know-have-allergy)
            (know-food-restriction)
            (know-budget)
            (know-outing-type)
            (know-conflict)
            (know-restaurant)

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
