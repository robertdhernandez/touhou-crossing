///db_get(category, record, field)

var category = argument0
var record = argument1;
var field = argument2;

var records_list = ds_map_find_value( DB_MAP, category+"_records_list");
var fields_list = ds_map_find_value( DB_MAP, category+"_fields_list");
var values_grid = ds_map_find_value( DB_MAP, category+"_values_grid");

var yy = ds_list_find_index(records_list, record);
if yy == -1{
    show_debug_message(string(record)+" record not found, under the '"+category+"' category.");
    return undefined;
};

var xx = ds_list_find_index(fields_list, field);
if xx == -1{
    show_debug_message(string(field)+" field not found, under the '"+category+"' category.");
    return undefined;
};

var value = values_grid[# xx, yy];

return value;