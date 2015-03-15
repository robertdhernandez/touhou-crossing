///db_find_record(category, pos)

var category = argument0;
var pos = argument1;

var records_list = ds_map_find_value( DB_MAP, category+"_records_list");

return records_list[| pos];