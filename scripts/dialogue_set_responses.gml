/// dialogue_set_responses(response1, response2 [, response3, ..., response15])

global.dialogue_num_responses = argument_count;
for (var i = 0; i < argument_count; i++)
        global.dialogue_response[i] = argument[i];
