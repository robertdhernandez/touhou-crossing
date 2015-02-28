/// player_set_follower(npc_inst)

with (obj_player)
{
    if (follower != noone)
        npc_follow(follower, noone);

    follower = argument0;
    
    if (follower != noone)
        npc_follow(follower, id);
}