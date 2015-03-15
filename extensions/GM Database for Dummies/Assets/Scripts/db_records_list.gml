///db_records_list(category)

var category = argument0;

var records_list = ds_map_find_value( DB_MAP, category+"_records_list");

return records_list;