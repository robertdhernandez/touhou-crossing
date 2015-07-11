/// load_file_json(file_name, ds_type)

var file_text = load_file(argument0);
if (is_undefined(file_text)) 
    return undefined;
    
var root = json_decode(file_text);
if (root == -1)
{
    if (global.debug)
        show_error("Failed to decode JSON from " + argument0, true);
    return undefined;
}

switch (argument1)
{
    case ds_type_list:
        var json_list = ds_list_create();
        ds_list_copy(json_list, root[? "default"]);
        //ds_map_destroy(root); // Memory leak if not deleted, but doesn't work if deleted
            
        return json_list;
    
    case ds_type_map:
        return root;
        
    default:
        var v = root[? "default"];
        ds_map_destroy(root);
        
        return v;
}