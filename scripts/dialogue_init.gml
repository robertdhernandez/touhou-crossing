/// dialogue_init()

for (var i = 15; i >= 0; i--)
{
    global.dialogue_buffer[i] = ds_queue_create();
    global.dialogue_endaction[i] = undefined;
    global.dialogue_response[i] = "";
    global.dialogue_result[i] = undefined;
}

global.dialogue_num_responses = 0;
global.dialogue_npc = -1;
global.dialogue_speaker = "";

global.font_dialogue = font_add_sprite_ext(spr_ui_dialogue_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!?~_/" + '"' + "@',.:;+-&[]()<>*^=", true, 1);

dialogue_reset();
