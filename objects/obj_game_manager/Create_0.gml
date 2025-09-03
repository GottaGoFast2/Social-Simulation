enum karma {
    positive = 10,
    neutral = 8,
    bad = 6
}
testno = 0;
questions = 
[
{ 
  title: "Test 1", // Compassion 1
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
  title: "Test 2", // Teamwork 1
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
  title: "Test 3", // Empathy 1
  question: "They look upset.",
  prompt:    
[ 
    {
        text: "TALK IT OUT",
        karma: karma.positive, 
    },
    {
        text: "IGNORE THEM" ,
        karma: karma.neutral,
    },
    {
        text: "'JUST COPE'",
        karma: karma.bad,
    },
]
},

{
  title: "Test 4", // Teamwork 2
  question: "Your friend is scared to talk to those people over there.",
  prompt:    
[ 
    {
        text: "ENCOURAGE AND ASSIST",
        karma: karma.positive, 
    },
    {
        text: "LAUGH AND DISMISS" ,
        karma: karma.neutral,
    },
    {
        text: "CHANGE THE SUBJECT",
        karma: karma.bad,
    },
]
},
{
  title: "Test 5", // Compassion 2
  question: "They're being bullied and teased, for an unclear reason.",
  prompt:    
[ 
    {
        text: "DEFEND OR DIVERT",
        karma: karma.positive, 
    },
    {
        text: "STAY AWAY" ,
        karma: karma.neutral,
    },
    {
        text: "JOIN THEM",
        karma: karma.bad,
    },
]
},

{
  title: "Test 6", // Teamwork 3
  question: "They seem to be left out of whatever their group is upto.",
  prompt:    
[ 
    {
        text: "BEFRIEND THEM",
        karma: karma.positive, 
    },
    {
        text: "DON'T GET INVOLVED" ,
        karma: karma.neutral,
    },
    {
        text: "POINT IT OUT TO THEM",
        karma: karma.bad,
    },
]
},
{
  title: "Test 7", // Compassion 3
  question: "They are furious, not at you directly.",
  prompt:    
[ 
    {
        text: "GIVE SPACE AND SUPPORT",
        karma: karma.positive, 
    },
    {
        text: "IGNORE THEM COMPLETELY" ,
        karma: karma.neutral,
    },
    {
        text: "SHOUT 'STOP!'",
        karma: karma.bad,
    },
]
},
{
  title: "Test 8", // Empathy 2
  question: "They seem new around here.",
  prompt:    
[ 
    {
        text: "INTRODUCE AND BEFRIEND",
        karma: karma.positive, 
    },
    {
        text: "LET THEM FIGURE IT OUT" ,
        karma: karma.neutral,
    },
    {
        text: "JUST LISTEN",
        karma: karma.bad,
    },
]
},
{
  title: "Test 9", // Empathy 3
  question: "They slipped and fell. How embarassing.",
  prompt:    
[ 
    {
        text: "REASSURE AND HELP",
        karma: karma.positive, 
    },
    {
        text: "IGNORE THEM" ,
        karma: karma.neutral,
    },
    {
        text: "BRING ATTENTION",
        karma: karma.bad,
    },
]
},
{
  title: "Test 10", // mega (all combined)
  question: "wait i havent thought of a question yet",
  prompt:    
[ 
    {
        text: "CALL THE MAKER AND OFFER A QUESTION",
        karma: karma.positive, 
    },
    {
        text: "IGNORE" ,
        karma: karma.neutral,
    },
    {
        text: "PROTEST AND DOXX",
        karma: karma.bad,
    },
]
},

]


instance_create_layer(0, 0, "Instances", obj_questions, {question: questions[0]})

// function
submit_answer = function(_karma)
{
     global.k_points = _karma + global.k_points;
     // show_message(global.k_points); 
     instance_destroy(obj_prompt)
     instance_destroy(obj_questions)
     testno = testno + 1;
     instance_create_layer(0, 0, "Instances", obj_questions, {question: questions[testno]})   
    
}