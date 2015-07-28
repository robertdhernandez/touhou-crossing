/// dialogue_show(type)

globalvar ui_dialogue;

// Activate ui_dialogue and its subcomponents
instance_activate_object(ui_dialogue);
instance_activate_object(ui_dialogue.inst_continue);
instance_activate_object(ui_dialogue.inst_response);
instance_activate_object(ui_dialogue.inst_response.selection);

global.player_input = false;
global.ui_clock.can_show = false;

with (ui_dialogue)
{    
    image_index = argument0;
    display = true;
    message_index = 0;
    responded = false;
    event_user(0);
}
