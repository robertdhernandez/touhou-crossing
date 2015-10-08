/// create_path(path, inst_id, x, y, xdest, ydest)

mp_grid_clear_all(global.mp_grid);

with (obj_collision)
{
    if (id != argument1) mp_grid_add_instances(global.mp_grid, id, false);
}

return mp_grid_path(global.mp_grid, argument0, argument2, argument3, argument4, argument5, true); 
