
(define (problem restaurant-picker-7)
    (:domain restaurant-picker)

    ;(:objects )
    (:objects location phone-number cuisine have-allergy food-restriction budget outing-type conflict restaurant)
   (:init 
        ; location
        (related location phone-number)
        (related location restaurant)
        (related location conflict)
        (related location budget)
        (related location cuisine)
        (related location outing-type)
        (related location allergy)

        ; phone number
        (related phone-number location)
        (related phone-number restaurant)
        (related phone-number conflict)
        (related phone-number budget)
        (related phone-number cuisine)
        (related phone-number outing-type)
        (related phone-number allergy)

        ; cuisine
        (related cuisine restaurant)
        (related cuisine food-restriction)
        (related cuisine location)
        (related cuisine conflict)
        (related cuisine budget)
        (related cuisine outing-type)
        (related cuisine allergy)

        ; have-allergy
        (related have-allergy food-restriction)
        (related have-allergy conflict)
        (related have-allergy outing-type)
        (related have-allergy cuisine)
        (related have-allergy restaurant)
        (related have-allergy location)
        (related have-allergy phone-number)

        ; food-restriction
        (related food-restriction cuisine)
        (related food-restriction restaurant)
        (related food-restriction allergy)
        (related food-restriction conflict)
        (related food-restriction budget)
        (related food-restriction outing-type)
        (related food-restriction location)

        ; budget
        (related budget location)
        (related budget conflict)
        (related budget cuisine)
        (related budget outing-type)
        (related budget restaurant)
        (related budget phone-number)
        (related budget food-restriction)

        ; outing-type
        (related outing-type restaurant)
        (related outing-type location)
        (related outing-type cuisine)
        (related outing-type allergy)
        (related outing-type budget)
        (related outing-type conflict)
        (related outing-type food-restriction)

        ; conflict
        (related conflict location)
        (related conflict cuisine)
        (related conflict budget)
        (related conflict allergy)
        (related conflict restaurant)
        (related conflict outing-type)
        (related conflict food-restriction)

        ; restaurant
        (related restaurant cuisine)
        (related restaurant food-restriction)
        (related restaurant location)
        (related restaurant outing-type)
        (related restaurant phone-number)
        (related restaurant conflict)
        (related restaurant budget)
    )

    ; Goal to get to the end of the street
    (:goal
        (and
            (goal)
        )
    )
)
