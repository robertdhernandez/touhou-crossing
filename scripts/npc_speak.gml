/// npc_speak(npc_inst, tag)

enum speak
{
    introduce = 1,
    greet = 2,
    help_me = 3,
    talk = 4,
    goodbye = 5,
}

dialogue_reset();
dialogue_set_speaker(npc_get_name(argument0.npc_id));
dialogue_set_npc(argument0);

var query = dialogue_json_query(global.npc_fairy_dialogue, argument1);
if (query != undefined)
{
    dialogue_json_apply(query);
    dialogue_show(0);
}
else
    show_debug_message("Failed to find a valid dialogue with tag " + argument1);

/*switch (argument0.npc_id)
{
    case npc.fairy: npc_speak_fairy(argument0, argument1); break;
    default:        npc_speak_default(argument0, argument1); break;
}*/


