///db_read_csv(category, [fname])

var category = argument0;
var fname = category +".csv";
if argument_count == 2 fname = argument[1]

if not file_exists(fname){
    show_error(fname+" does not exist", false);
    exit;
};

var grid = csv_read_to_grid(fname); //Read csv file and store it in a grid
var w = ds_grid_width(grid)-1;
var h = ds_grid_height(grid)-1;

ds_map_replace( DB_MAP, category+"_values_grid", ds_grid_create(w,h)); //Add or replace category in database
if DB_DEBUG_MODE show_debug_message("'"+category+"' category added to database");

//Copy csv grid to database, except first row and column
var values_grid = ds_map_find_value( DB_MAP, category+"_values_grid");
ds_grid_set_grid_region(values_grid, grid, 1, 1, w+1, h+1, 0, 0);

var records_list = ds_grid_list_from_col(grid, 0); //Get record column from csv grid
ds_list_delete(records_list, 0); //Delete top left corner value
ds_map_add( DB_MAP, category+"_records_list", records_list);//Add to database

var fields_list = ds_grid_list_from_row(grid, 0); //Get fields row from csv grid
ds_list_delete(fields_list,0); //Delete top left corner value
ds_map_add( DB_MAP, category+"_fields_list", fields_list);//Add to database

ds_grid_destroy(grid);