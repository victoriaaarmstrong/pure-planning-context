    
(define (problem restaurant-picker-1)
    (:domain restaurant-picker)

    ;(:objects )
    (:objects location phone-number cuisine have-allergy food-restriction budget outing-type conflict restaurant)
    (:init 
        ; location
        (related location phone-number)

        ; phone number
        (related phone-number location)

        ; cuisine
        (related cuisine restaurant)

        ; have-allergy
        (related have-allergy food-restriction)

        ; food-restriction
        (related food-restriction cuisine)

        ; budget
        (related budget location)

        ; outing-type
        (related outing-type restaurant)

        ; conflict
        (related conflict location)

        ; restaurant
        (related restaurant cuisine)
    )

    ; Goal to get to the end of the street
    (:goal
        (and
            (goal)
        )
    )
)
