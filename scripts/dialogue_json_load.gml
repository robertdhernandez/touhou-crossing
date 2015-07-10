/// dialogue_json_load(filename)

var root = load_file_json(argument0, ds_type_list);

var size = ds_list_size(root);
for (var i = 0; i < size; i++)
{
    var dialogue = root[| i];
    
    // Set priority to 0 if none is set
    if (not ds_map_exists(dialogue, json_priority))
        dialogue[? json_priority] = 0;
        
    // Convert endaction in dialogue to scripts
    if (ds_map_exists(dialogue, json_endaction))
    {
        var str = dialogue[? json_endaction];
        var asset_str = "endaction_" + str;
        
        var index = asset_get_index(asset_str);
        
        if (index == -1 or asset_get_type(asset_str) != asset_script)
            show_debug_message("Warning: Dialogue endaction " + str + " will be ignored as it is not a valid endaction.");
            
        else
            dialogue[? json_endaction] = index;
    }
    
    // Convert requirement(s) into script(s)
    if (ds_map_exists(dialogue, json_requirement))
    {
        var valid = ds_list_create();
        var requirement = dialogue[? json_requirement];
        var count = ds_list_size(requirement);
        
        for (var j = 0; j < count; j++)
        {
            var str = requirement[| j];
            var asset_str = "requirement_" + str;
            
            var index = asset_get_index(asset_str);
            if (index == -1)
            {
                show_debug_message("Warning: " + str + " will be ignored as it is not a valid requirement.");
                continue;
            }
            
            if (asset_get_type(asset_str) != asset_script)
            {
                show_debug_message("Warning: " + str + " will be ignored as it is not a valid requirement.");
                continue;
            }
            
            ds_list_add(valid, index);
        }
        
        ds_list_destroy(requirement);
        ds_map_replace_list(dialogue, json_requirement, valid);
    }
    
    // Convert response endaction to scripts
    if (ds_map_exists(dialogue, json_response))
    {
        var valid = ds_list_create();
        var response_list = dialogue[? json_response];
        
        for (var j = 0; j < ds_list_size(response_list); j++)
        {
            var response_object = response_list[| j];
        
            // endaction is optional, so objects may not have it
            if (not ds_map_exists(response_object, json_endaction))
                continue;
        
            var str = response_object[? json_endaction];
            var asset_str = "endaction_" + str;
            
            var index = asset_get_index(asset_str);
            
            if (index == -1 or asset_get_type(asset_str) != asset_script)
                show_debug_message("Warning: Response endaction " + str + " will be ignored as it is not a valid endaction.");
                
            else
                response_object[? json_endaction] = index;
        }
    }
}

dialogue_json_sort(root);

return root;
