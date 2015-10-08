/// dialogue_set_message(idx, str [, str2, ..., str14])

var idx = argument[0];

for (var i = 1; i < argument_count; i++)
    ds_queue_enqueue(global.dialogue_buffer[idx], parse_string(argument[i]));
