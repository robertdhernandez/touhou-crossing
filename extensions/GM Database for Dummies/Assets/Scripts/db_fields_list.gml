///db_fields_list(category)

var category = argument0;

var fields_list = ds_map_find_value( DB_MAP, category+"_fields_list");

return fields_list;