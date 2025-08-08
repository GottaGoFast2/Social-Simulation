enum karma {
    positive = 10,
    neutral = 8,
    bad = 6
}

k_points = 0;
questions = [
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
        text: "MAKE YOUR OWN" ,
        karma: karma.neutral,
    },
    {
        text: "DESTROY ALL SANDCASTLES",
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
}
