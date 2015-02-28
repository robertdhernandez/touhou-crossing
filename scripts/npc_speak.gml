/// npc_speak(npc_inst, speak_reason)

enum speak
{
    introduce = 1,
    greet = 2,
    help_me = 3,
    talk = 4,
    goodbye = 5,
}

var scr = npc_speak_default;

switch (argument0.npc_id)
{
    case npc.fairy: scr = npc_speak_fairy; break;
}

dialogue_reset();
dialogue_set_speaker(npc_get_name(argument0.npc_id));
dialogue_set_npc(argument0);
script_execute(scr, argument0, argument1);
dialogue_show(0);