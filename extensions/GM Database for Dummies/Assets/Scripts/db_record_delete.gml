///db_record_delete(category, record)

var category = argument0;
var record = argument1;

var records_list = ds_map_find_value( DB_MAP, category+"_records_list");
var values_grid = ds_map_find_value( DB_MAP, category+"_values_grid");

var yy = ds_list_find_index(records_list, record);
if yy == -1{
    show_debug_message(record +" not found in "+category+" (for deletion)");
    exit;
};

var w = ds_grid_width(values_grid);
var h = ds_grid_height(values_grid);
ds_grid_set_grid_region(values_grid, values_grid, 0, yy+1, w, h, 0, yy);
ds_grid_resize(values_grid, w, h-1);

ds_list_delete(records_list, yy);