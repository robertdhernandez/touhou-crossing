/// dialogue_json_query(root, tag)

var root = argument0;
var tag = argument1;

var valid_maps = ds_list_create();

var max_priority = 0;
for (var i = 0; i < ds_list_size(root); i++)
{
    var dialogue = root[| i];
    
    if (dialogue[? json_tag] != tag)
        continue;
        
    if (dialogue[? json_priority] < max_priority)
        break;
    
    var requirement = dialogue[? json_requirement];
    if (not is_undefined(requirement))
    {
        var valid = true;
        
        for (var j = 0; valid and j < ds_list_size(requirement); j++)
            valid = script_execute(requirement[| j]);
        
        if (not valid)
            continue;
    }
    
    ds_list_add(valid_maps, dialogue);
    max_priority = dialogue[? json_priority];
}

var query = undefined;

var num_valid = ds_list_size(valid_maps);
show_debug_message("Found " + string(num_valid) + " valid dialogues");

if (num_valid > 0)
{
    ds_list_shuffle(valid_maps);
    query = valid_maps[| 0];
}

ds_list_destroy(valid_maps);

return query;
