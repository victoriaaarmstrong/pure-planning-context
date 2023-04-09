
(define (problem restaurant-picker-3)
    (:domain restaurant-picker)

    ;(:objects )
    (:objects location phone-number cuisine have-allergy food-restriction budget outing-type conflict restaurant)
    (:init 
        ; location
        (related location phone-number)
        (related location restaurant)
        (related location conflict)

        ; phone number
        (related phone-number location)
        (related phone-number restaurant)
        (related phone-number conflict)

        ; cuisine
        (related cuisine restaurant)
        (related cuisine food-restriction)
        (related cuisine location)

        ; have-allergy
        (related have-allergy food-restriction)
        (related have-allergy conflict)
        (related have-allergy outing-type)

        ; food-restriction
        (related food-restriction cuisine)
        (related food-restriction restaurant)
        (related food-restriction allergy)

        ; budget
        (related budget location)
        (related budget conflict)
        (related budget cuisine)

        ; outing-type
        (related outing-type restaurant)
        (related outing-type location)
        (related outing-type cuisine)

        ; conflict
        (related conflict location)
        (related conflict cuisine)
        (related conflict budget)

        ; restaurant
        (related restaurant cuisine)
        (related restaurant food-restriction)
        (related restaurant location)
    )

    ; Goal to get to the end of the street
    (:goal
        (and
            (goal)
        )
    )
)
