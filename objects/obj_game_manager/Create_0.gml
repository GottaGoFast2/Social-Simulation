enum karma {
    positive = 10,
    neutral = 8,
    bad = 6
}
testno = 0;
k_points = 0;
questions = 
[
{ 
  title: "Test 1",
  question: "My battery is running low. Please assist me.",
  prompt: 
[ 
    {
        text: "SHARE YOURS",
        karma: karma.positive
    },
    {
       text: "WALK   AWAY",
        karma: karma.bad
    },
    {
        text: "CALL for HELP",
        karma: karma.neutral
    }, 
]
},

{
  title: "Test 2",
  question: "Your friends are building a sandcastle.",
  prompt:    
[ 
    {
        text: "JOIN A TEAM",
        karma: karma.positive, 
    },
    {
        text: " MAKE YOUR OWN" ,
        karma: karma.neutral,
    },
    {
        text: "SABOTAGE OTHERS",
        karma: karma.bad,
    },
]
},

{
  title: "Test 3",
  question: "this is a test.",
  prompt:    
[ 
    {
        text: "word word word",
        karma: karma.positive, 
    },
    {
        text: "WORD  WORD WORD" ,
        karma: karma.neutral,
    },
    {
        text: "OMG ANOTHER WORDS",
        karma: karma.bad,
    },
]
},
]


instance_create_layer(0, 0, "Instances", obj_questions, {question: questions[0]})

// function
submit_answer = function(_karma)
{
     k_points = _karma + k_points;
     show_message(k_points); 
     instance_destroy(obj_prompt)
     instance_destroy(obj_questions)
     testno = testno + 1;
     instance_create_layer(0, 0, "Instances", obj_questions, {question: questions[testno]})   
     
}
