/// dialogue_show(type)

globalvar ui_dialogue;

// Activate ui_dialogue and its subcomponents
instance_activate_object(ui_dialogue);
instance_activate_object(ui_dialogue.inst_continue);
instance_activate_object(ui_dialogue.inst_response);
instance_activate_object(ui_dialogue.inst_response.selection);
instance_activate_object(ui_dialogue.inst_speaker);
instance_activate_object(ui_dialogue.inst_text);

// Disable player input
global.player_input = false;

with (ui_dialogue)
{    
    image_index = argument0;
    display = true;
    message_index = 0;
    responded = false;
    event_user(0);
}
