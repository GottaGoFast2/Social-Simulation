enum Karma {
    positive,
    neutral,
    bad
}



Question1 = {
  title: "Compassion Test 1",
  question: "Robot Delta needs help, their battery is running low. They have asked you to help them recharge.",
  prompts: [ 
{
    text: "Give one of your battery cells",
    value: 10,
    karma: Karma.positive, 
},
{
    text: "ask scientist" ,
    value: 1,
    karma: Karma.neutral,
},
{
    text: "Walk away",
    value: 1,
    karma: Karma.bad,
},
]
}

Question2 = {
    title: "Compassion Test 2",
  question: "testing",
  prompts: [ 
{
    text: "prompt 1",
    value: 10,
    karma: Karma.positive, 
},
{
    text: "prompt 2" ,
    value: 1,
    karma: Karma.neutral,
},
{
    text: "prompt 3",
    value: 1,
    karma: Karma.bad,
},
]
}