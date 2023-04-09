
(define (problem restaurant-picker-2)
    (:domain restaurant-picker)

    ;(:objects )
    (:objects location phone-number cuisine have-allergy food-restriction budget outing-type conflict restaurant)
    (:init 
        ; location
        (related location phone-number)
        (related location restaurant)

        ; phone number
        (related phone-number location)
        (related phone-number restaurant)

        ; cuisine
        (related cuisine restaurant)
        (related cuisine food-restriction)

        ; have-allergy
        (related have-allergy food-restriction)
        (related have-allergy conflict)

        ; food-restriction
        (related food-restriction cuisine)
        (related food-restriction restaurant)

        ; budget
        (related budget location)
        (related budget conflict)

        ; outing-type
        (related outing-type restaurant)
        (related outing-type location)

        ; conflict
        (related conflict location)
        (related conflict cuisine)

        ; restaurant
        (related restaurant cuisine)
        (related restaurant food-restriction)
    )

    ; Goal to get to the end of the street
    (:goal
        (and
            (goal)
        )
    )
)
