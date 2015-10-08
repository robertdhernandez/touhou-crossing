/// npc_think_fairy(npc_inst)

with (argument0)
{
    switch (random_weighted(4))
    {
        // Do nothing, face random direction
        case 0:
            direction = irandom(360);
        break;
        
        // Move to random point inside village
        case 1:
            npc_wander(id, 0, max_travel * tile_size);
        break;
    }
}
