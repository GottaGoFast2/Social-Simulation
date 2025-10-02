var prompt_array = array_create(3);
prompt_array[0] = question.prompt[0];
prompt_array[1] = question.prompt[1];
prompt_array[2] = question.prompt[2];

for (var i = 2; i > 0; i--) {
    var j = irandom(i);
    var temp = prompt_array[i];
    prompt_array[i] = prompt_array[j];
    prompt_array[j] = temp;
}

var choice_x = [66, 522, 978];

for (var i = 0; i < 3; i++) {
    instance_create_layer(choice_x[i], 9, "Instances", obj_prompt, {
        prompts: prompt_array[i]
    });
}
box_cloud = 680;