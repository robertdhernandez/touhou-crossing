/// dialogue_show(type)

globalvar dialogue;

// Activate dialogue and its subcomponents
instance_activate_object(dialogue);
instance_activate_object(dialogue.inst_continue);
instance_activate_object(dialogue.inst_response);
instance_activate_object(dialogue.inst_response.selection);
instance_activate_object(dialogue.inst_speaker);
instance_activate_object(dialogue.inst_text);

// Disable player input
obj_player.allow_input = false;

with (dialogue)
{    
    image_index = argument0;
    display = true;
    message_index = 0;
    responded = false;
    event_user(0);
}
