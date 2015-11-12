/// dialogue_show(type)

global.player_input = false;
global.ui_clock.can_show = false;

with (ui_dialogue)
{
    active = true;
    visible = true;
    image_index = argument0;
    display = true;
    message_index = 0;
    responded = false;
    event_user(0);
}
