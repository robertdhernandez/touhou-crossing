/// npc_show_expression_ext(npc_inst, expr, duration, loop, event)

enum expr
{
    angry = spr_expr_angry,
    cheer = spr_expr_cheer,
    excite = spr_expr_excite,
    grumpy = spr_expr_grumpy,
    happy = spr_expr_happy,
    love = spr_expr_love,
    mute = spr_expr_mute,
    sad = spr_expr_sad,
    sick = spr_expr_sick,
    smile = spr_expr_smile,
}

with (argument0)
{
    with (instance_create(x, y, obj_fx_expression))
    {
        parent = other.id;
        sprite_index = argument1;
        image_speed = (image_number / (argument2 / (argument3 + 1))) / room_speed;
        loop = argument3;
        event = argument4;
    }
}
