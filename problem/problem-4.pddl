
(define (problem restaurant-picker-4)
    (:domain restaurant-picker)

    ;(:objects )
    (:objects location phone-number cuisine have-allergy food-restriction budget outing-type conflict restaurant)
    (:init 
        ; location
        (related location phone-number)
        (related location restaurant)
        (related location conflict)
        (related location budget)

        ; phone number
        (related phone-number location)
        (related phone-number restaurant)
        (related phone-number conflict)
        (related phone-number budget)

        ; cuisine
        (related cuisine restaurant)
        (related cuisine food-restriction)
        (related cuisine location)
        (related cuisine conflict)

        ; have-allergy
        (related have-allergy food-restriction)
        (related have-allergy conflict)
        (related have-allergy outing-type)
        (related have-allergy cuisine)

        ; food-restriction
        (related food-restriction cuisine)
        (related food-restriction restaurant)
        (related food-restriction allergy)
        (related food-restriction conflict)

        ; budget
        (related budget location)
        (related budget conflict)
        (related budget cuisine)
        (related budget outing-type)

        ; outing-type
        (related outing-type restaurant)
        (related outing-type location)
        (related outing-type cuisine)
        (related outing-type allergy)

        ; conflict
        (related conflict location)
        (related conflict cuisine)
        (related conflict budget)
        (related conflict allergy)

        ; restaurant
        (related restaurant cuisine)
        (related restaurant food-restriction)
        (related restaurant location)
        (related restaurant outing-type)
    )

    ; Goal to get to the end of the street
    (:goal
        (and
            (goal)
        )
    )
)
