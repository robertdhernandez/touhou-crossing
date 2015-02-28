/// dialogue_show(type)

if (not instance_exists(obj_ui_dialogue))
    instance_create(0, 0, obj_ui_dialogue);

with (obj_ui_dialogue)
{
    image_index = argument0;
    display = true;
    message_index = 0;
    responded = false;
    event_user(0);
}