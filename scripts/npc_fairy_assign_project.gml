/// npc_fairy_assign_project(fairy_inst, project_inst)

with (argument0)
{
    // Old project
    if (npc_fairy_is_working(id))
        project.workers--;
        
    project = argument1;
    
    var is_working = npc_fairy_is_working(id);
    can_think = not is_working;
    can_direct = not is_working;
    
    // New project
    if (is_working)
    {
        alarm[1] = energy;
        project.workers++;
    }
}
