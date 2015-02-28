/// npcs_count(filter)

var count = 0;
for (var i = 0; i < npcs_number(); i++)
    if (script_execute(argument0, i))
        count++;
return count;