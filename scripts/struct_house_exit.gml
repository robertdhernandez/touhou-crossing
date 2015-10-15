/// struct_house_exit(id, index)

with (argument0)
{
    var index = argument1;
    var inst = occupant[index];
    
    if (inst != noone and (index != 0 or occupancy == 1))
    {
        // Last occupant MUST be the owner,
        // so check if they still own the home
        if (index == 0 and npc_get_home(inst.npc_id) != id)
        {
            owner = -1;
        }
    
        inst.direction = 270;
        npc_set_building(inst.npc_id, -1);
    
        occupant_active[index] = true;
        occupant_leaving[index] = true;
        
        instance_activate_object(inst);
        
        return true;
    }
}

return false;
