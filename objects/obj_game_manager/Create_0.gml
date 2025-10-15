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
          { text: "MAKE YOUR OWN", karma: karma.neutral },
          { text: "SABOTAGE OTHERS", karma: karma.bad }
      ]
    },
     {
      title: "Upset Kid", // Empathy 1
      question: "They look upset and frustrated at some recent event.",
      prompt:    
    [ 
        {
            text: "TALK TO THEM",
            karma: karma.positive, 
        },
        {
            text: "IGNORE THEM" ,
            karma: karma.neutral,
        },
        {
            text: "TELL THEM TO COPE",
            karma: karma.bad,
        },
    ]
    },
    
    {
      title: "Socially Awkward", // Teamwork 2
      question: "Your friend is scared to talk to a group in the distance.",
      prompt:    
    [ 
        {
            text: "ENCOURAGE AND ASSIST",
            karma: karma.positive, 
        },
        {
            text: "CHANGE THE SUBJECT" ,
            karma: karma.neutral,
        },
        {
            text: "MOCK AND TEASE",
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
      question: "They seem to be left out of whatever their friend group is upto.",
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
      title: "Emotional Outburst", // Compassion 3
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
            text: "EXPLAIN HOW IT COULD'VE GONE BETTER",
            karma: karma.bad,
        },
    ]
    },
    {
      title: "The New Kid", // Empathy 2
      question: "They just moved into this part of town.",
      prompt:    
    [ 
        {
            text: "BEFRIEND AND SHOW THEM THE TOWN",
            karma: karma.positive, 
        },
        {
            text: "LET THEM FIGURE IT OUT" ,
            karma: karma.neutral,
        },
        {
            text: "WARN THEM OF DANGER IN THIS TOWN",
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
            text: "REASSURE AND HELP THEM",
            karma: karma.positive, 
        },
        {
            text: "IGNORE THE ACCIDENT" ,
            karma: karma.neutral,
        },
        {
            text: "BRING ATTENTION AND MOCK",
            karma: karma.bad,
        },
    ]
    },
    {
    // Test for Compassion
    title: "The Lost Child",
    question: "The child seems to be lost, frantically looking for something.",
    prompt: [
      { text: "HELP THE KID OUT", karma: karma.positive },
      { text: "WAIT FOR THEIR PARENTS", karma: karma.neutral },
      { text: "IGNORE AND WALK AWAY", karma: karma.bad }
    ]
  },
  {
    // Test for Empathy
    title: "Student Inquiries",
    question: "A classmate is struggling to understand a concept you've already mastered.",
    prompt: [
      { text: "OFFER TO EXPLAIN", karma: karma.positive },
      { text: "CONTINUE YOUR OWN WORK", karma: karma.neutral },
      { text: "COMMENT ON THE SIMPLICITY", karma: karma.bad }
    ]
  },
  {
    // Test for Teamwork
    title: "Stressed Teammate",
    question: "Your teammate feels overwhelmed by their workload.",
    prompt: [
      { text: "HELP THEM OUT", karma: karma.positive },
      { text: "MOTIVATE THEM", karma: karma.neutral },
      { text: "REPORT THEM NOW", karma: karma.bad }
    ]
  },
  {
    // Test for Compassion
    title: "Misplaced Wallet",
    question: "You witness someone drop a wallet full of money on the sidewalk.",
    prompt: [
      { text: "RETURN THE WALLET TO THE OWNER", karma: karma.positive },
      { text: "HAND TO ADULT NEARBY", karma: karma.neutral },
      { text: "KEEP THE WALLET", karma: karma.bad }
    ]
  },
  {
    // Test for Empathy
    title: "The Silent Burden",
    question: "A teammate has been unusually quiet, withdrawn, and stressed during group meetings.",
    prompt: [
      { text: "PULL THEM ASIDE TO CHECK IN", karma: karma.positive }, // Active and private support
      { text: "WAIT FOR THEM TO BRING IT UP", karma: karma.neutral }, // Passive, doesn't hurt, but doesn't help
      { text: "COMPLAIN ABOUT THEIR LACK OF PARTICIPATION", karma: karma.bad } // Blame/Criticism
    ]
  },
  {
    // Test for Teamwork
    title: "Tech Illiterate",
    question: "You notice that they are struggling to get that device to work.",
    prompt: [
      { text: "HELP THEM TURN ON THE DEVICE", karma: karma.positive },
      { text: "FOCUS ON YOUR TASK", karma: karma.neutral },
      { text: "COMPLAIN ABOUT INCOMPETENCY", karma: karma.bad }
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
    // 1. Add karma points
    global.k_points += _karma;

    // 2. Destroy the old UI
    instance_destroy(obj_prompt);
    instance_destroy(obj_questions);

    // 3. Move to next question index
    testno++;

    // 4. Set how many questions you want to ask
    var max_questions = 10;

    // 5. If we haven’t reached the limit, go to next question
    if (testno < max_questions) {
        instance_create_layer(0, 0, "Instances", obj_questions, {
            question: questions[testno]
        });
    }
    // 6. Otherwise, delay and then go to results
    else {
        next_step = "end_game";
        alarm[0] = room_speed * 1; // 1-second delay before results
    }

}