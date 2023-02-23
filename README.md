# Evaluating a Pure Planning Approach to User Provided Context
Modelling additional user context and how PRP fails to handle this for CISC 813 Course Project

This repo contains 4 files:
 - *domain-project-basic.pddl* specifies the most basic non-deterministic setting. Either the user is going to give us the direct information we query or they won't provide any information. There is no notion of additional context and this serves as the base case. 
 - *domain-project-everything.pddl* specifies the most extreme non-deterministic setting. For every query to the user, they could provide any predicate(s) as additional context.
 - *domain-project-some.pddl* specifies a middle group, where users could add some related additional context, however they are restricted to on-topic predicates. For example, when asked for allergies, they could also provide food restricitons as this is topical, but wouldn't provide any budget information since this is off-topic.
 - *project-problem.pddl* contains the initialization specifications for all domain files. The goal is simple - the goal predicate must be satisfied. Goal satisfaction is explicit in each domain file. 
