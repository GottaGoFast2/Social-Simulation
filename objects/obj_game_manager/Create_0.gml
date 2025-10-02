// Setup karma enum
enum karma {
    positive = 10,
    neutral = 8,
    bad = 6
}

// Start at question 0
testno = 0;

// QUESTION DATA
questions = 
[
    {
      title: "A Light Snack",
      question: "He finished his snack, but is still hungry.",
      prompt: [
          { text: "SHARE YOUR FOOD", karma: karma.positive },
          { text: "WALK AWAY", karma: karma.bad },
          { text: "ASK SOMEONE ELSE", karma: karma.neutral }
      ]
    },
    {
      title: "The Contest",
      question: "Your friends are building a sandcastle.",
      prompt: [
          { text: "JOIN A TEAM", karma: karma.positive },
          { text: " MAKE YOUR OWN", karma: karma.neutral },
          { text: "SABOTAGE OTHERS", karma: karma.bad }
      ]
    },
     {
      title: "Upset Kid", // Empathy 1
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
      title: "Socially Awkward", // Teamwork 2
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
      title: "The Bullies", // Compassion 2
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
      title: "In the Dark", // Teamwork 3
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
      title: "High Tensions", // Compassion 3
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
      title: "The New Kid", // Empathy 2
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
      title: "An Accident", // Empathy 3
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
    // Test for Compassion
    title: "The Lost Child",
    question: "The child is lost and is asking you for help.",
    prompt: [
      { text: "OFFER YOUR HELP", karma: karma.positive },
      { text: "WAIT FOR PARENT", karma: karma.neutral },
      { text: "WALK AWAY", karma: karma.bad }
    ]
  },
  {
    // Test for Empathy
    title: "Student Inquiries",
    question: "A classmate is struggling to understand a concept you've already mastered.",
    prompt: [
      { text: "OFFER TO EXPLAIN", karma: karma.positive },
      { text: "CONTINUE YOUR WORK", karma: karma.neutral },
      { text: "SAY IT'S EASY", karma: karma.bad }
    ]
  },
  {
    // Test for Teamwork
    title: "Stressed Teammate",
    question: "Your teammate feels overwhelmed by their workload.",
    prompt: [
      { text: "OFFER TO HELP", karma: karma.positive },
      { text: "DO YOUR PART", karma: karma.neutral },
      { text: "REPORT THEM NOW", karma: karma.bad }
    ]
  },
  {
    // Test for Compassion
    title: "Misplaced Wallet",
    question: "You witness someone drop a wallet full of cash on the sidewalk.",
    prompt: [
      { text: "RETURN THE WALLET", karma: karma.positive },
      { text: "HAND TO ADULT", karma: karma.neutral },
      { text: "KEEP THE WALLET", karma: karma.bad }
    ]
  },
  {
    // Test for Empathy
    title: "A Shaky Situation",
    question: "She's getting emotional talking about a difficult situation.",
    prompt: [
      { text: "LISTEN AND SUPPORT", karma: karma.positive },
      { text: "GIVE THEM ADVICE", karma: karma.neutral },
      { text: "CHANGE THE SUBJECT", karma: karma.bad }
    ]
  },
  {
    // Test for Teamwork
    title: "Tech Illiterate",
    question: "You notice that they are struggling to get that device to work.",
    prompt: [
      { text: "OFFER TO HELP", karma: karma.positive },
      { text: "FOCUS ON YOUR TASK", karma: karma.neutral },
      { text: "COMPLAIN ABOUT LATENESS", karma: karma.bad }
    ]
  }  
]

// ✅ Now randomize
randomize();

// ✅ Shuffle questions
for (var i = array_length(questions) - 1; i > 0; i--) {
    var j = irandom(i);
    var temp = questions[i];
    questions[i] = questions[j];
    questions[j] = temp;
}

// ✅ Shuffle prompts inside each question
for (var q = 0; q < array_length(questions); q++) {
    var prompts = questions[q].prompt;
    for (var i = array_length(prompts) - 1; i > 0; i--) {
        var j = irandom(i);
        var temp = prompts[i];
        prompts[i] = prompts[j];
        prompts[j] = temp;
    }
    questions[q].prompt = prompts;
}

// ✅ Start the first question
var current_question = questions[testno];
instance_create_layer(0, 0, "Instances", obj_questions, {
    question: current_question
});

// ✅ When player answers
submit_answer = function(_karma)
{
    global.k_points += _karma;
    instance_destroy(obj_prompt);
    instance_destroy(obj_questions);
    testno++;
    
    // If we have more questions:
    if (testno < array_length(questions)) {
        instance_create_layer(0, 0, "Instances", obj_questions, {
            question: questions[testno]
        });
    } else {
        // All done! End screen? Reset? Your choice.
    }
}