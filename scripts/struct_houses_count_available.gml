/// struct_houses_count_available()

var count = 0;
for (var i = 0; i < npcs_number(); i++)
    if (npc_get_home(i) != -1)
        count--;

with (obj_struct_house)
    if (owner == -1)
        count++;
        
return max(count, 0);