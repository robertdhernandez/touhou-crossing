/// npc_speak(npc_inst, speak_reason)

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

switch (argument0.npc_id)
{
    case npc.fairy: npc_speak_fairy(argument0, argument1); break;
    default:        npc_speak_default(argument0, argument1); break;
}

dialogue_show(0);