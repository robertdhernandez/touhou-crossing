/// dialogue_reset()

for (var i = 0; i < 15; i++)
{
    ds_queue_clear(global.dialogue_buffer[i]);
    global.dialogue_endaction[i] = undefined;
    global.dialogue_response[i] = "";
    global.dialogue_result[i] = undefined;
}

global.dialogue_num_responses = 0;
global.dialogue_npc = -1;
global.dialogue_speaker = "";
