///db_category_delete(category)

var category = argument0;

var records_list = ds_map_find_value( DB_MAP, category+"_records_list");
var fields_list = ds_map_find_value( DB_MAP, category+"_fields_list");
var values_grid = ds_map_find_value( DB_MAP, category+"_values_grid");

ds_list_destroy(records_list);
ds_list_destroy(fields_list);
ds_grid_destroy(values_grid);

ds_map_delete(DB_MAP, category)