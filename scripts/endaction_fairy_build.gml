/// endaction_fairy_build()

with (obj_player.interact_id)
{
    var fairy = player_get_follower();
    player_set_follower(noone);
    npc_fairy_assign_project(fairy, id);
    //npc_move_to(fairy, x, y);
}