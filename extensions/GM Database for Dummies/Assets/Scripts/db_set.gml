///db_set(category, record, field, value)

/***************************************************
  Adds or replaces value in database DB_MAP,
  creating new category, record, and field if they do not exist
 ***************************************************/

var category = argument0;
var record = argument1;
var field = argument2;
var value = argument3;

var new_category = false;
if not ds_map_exists( DB_MAP, category+"_values_grid"){
    ds_map_add( DB_MAP, category+"_records_list", ds_list_create());
    ds_map_add( DB_MAP, category+"_fields_list", ds_list_create());
    ds_map_add( DB_MAP, category+"_values_grid", ds_grid_create(1,1));
    new_category = true;
    if DB_DEBUG_MODE show_debug_message("'"+category+"' category added to database");
};
var records_list = ds_map_find_value( DB_MAP, category+"_records_list");
var fields_list = ds_map_find_value( DB_MAP, category+"_fields_list");
var values_grid = ds_map_find_value( DB_MAP, category+"_values_grid");

var yy = ds_list_find_index(records_list, record);
if yy == -1{
    ds_list_add(records_list, record);
    if not new_category ds_grid_resize(values_grid, ds_grid_width(values_grid), ds_grid_height(values_grid)+1);
    if DB_DEBUG_MODE show_debug_message(string(record)+" record added to database, under the '"+category+"' category.");
    yy = ds_list_find_index(records_list, record);
};

var xx = ds_list_find_index(fields_list, field);
if xx == -1{
    ds_list_add(fields_list, field);
    if not new_category ds_grid_resize(values_grid, ds_grid_width(values_grid)+1, ds_grid_height(values_grid));
    if DB_DEBUG_MODE show_debug_message(string(field)+" field added to database, under the '"+category+"' category.");
    xx = ds_list_find_index(fields_list, field);
};

ds_grid_set( values_grid, xx, yy, value);
if DB_DEBUG_MODE show_debug_message(string(category)+", "+string(record)+", "+string(field) +" set to "+string(value));