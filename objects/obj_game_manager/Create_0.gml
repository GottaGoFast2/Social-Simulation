enum karma {
    positive = 10,
    neutral = 8,
    bad = 6
}

CompassionTest1 = {
  title: "Compassion Test 1",
  question: "My battery is running low. Please assist me.",
  prompt: [ 
{
    text: "SHARE YOURS",
    karma: karma.positive
},
{
    text: "WALK AWAY",
    karma: karma.bad
},
{
    text: "CALL for HELP",
    karma: karma.neutral
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
    karma: karma.positive, 
},
{
    text: "prompt 2" ,
    value: 1,
    karma: karma.neutral,
},
{
    text: "prompt 3",
    value: 1,
    karma: karma.bad,
},
]
}

instance_create_layer(0, 0, "Instances", obj_questions, {question: CompassionTest1})