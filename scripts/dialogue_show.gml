/// dialogue_show(type)

with (obj_ui_dialogue)
{
    image_index = argument0;
    display = true;
    message_index = 0;
    responded = false;
    event_user(0);
}