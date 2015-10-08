/// struct_house_is_owned(id)

for (var i = 0; i < npcs_number(); i++)
    if (npc_get_home(i) == argument0)
        return true;

return struct_house_get_owner(argument0) != -1;
