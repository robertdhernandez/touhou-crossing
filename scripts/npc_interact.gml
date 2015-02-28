/// npc_interact(npc_inst, struct_inst)

with (argument0)
{
    var struct_inst = argument1;

    // FATAL BUG Unable to find any instance of object index 'n'
    switch (struct_inst.object_index)
    {
        case obj_struct_project:
            if (npc_is_fairy(npc_id) and npc_fairy_can_work(id))
                npc_fairy_assign_project(id, struct_inst);
        break;
    
        case obj_struct_house:
            if (struct_house_can_enter(struct_inst, id))
                struct_house_enter(struct_inst, id);
        break;
    }
}