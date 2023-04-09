# Evaluating a Pure Planning Approach to User Provided Context
Modelling additional user context and quantifiying if and how PRP++ to handle this for CISC 813 Course Project.

This repo contains:
 - a *domain folder* with 3 domain files for basic, some, and everything in terms of the amount of context allowed. 
 - a *problem folder* with 8 problem files for varying levels of context.

This summarizes the different domain and problem file combinations for different levels of additional user context. This table can also be found in the Evaluation section of the report 

| Amount of Context |          Domain        |     Problem    |
| ----------------- | ---------------------- | -------------- |
| (0) None          | domain-basic.pddl      | problem-0.pddl |
| l level           | domain-some.pddl       | problem-1.pddl |
| 2 levels          | domain-some.pddl       | problem-2.pddl |
| 3 levels          | domain-some.pddl       | problem-3.pddl |
| 4 levels          | domain-some.pddl       | problem-4.pddl |
| 5 levels          | domain-some.pddl       | problem-5.pddl |
| 6 levels          | domain-some.pddl       | problem-6.pddl |
| 7 levels          | domain-some.pddl       | problem-7.pddl |
| (8) All           | domain-everything.pddl | problem-0.pddl |

# Run Instructions

Requirements: cisc813 standard docker image

To run: 

         prppp <domain.pddl> <problem.pddl> --output-format <1, 2, or 3>

To toggle on and off allowing the human user to change/update the info they've provided:

 1. domain-basic.pddl: comment out lines 71 & 78
 2. domain-some.pddl: comment out lines 84 & 91
 3. domain-everything.pddl: comment out lines 78 & 85
