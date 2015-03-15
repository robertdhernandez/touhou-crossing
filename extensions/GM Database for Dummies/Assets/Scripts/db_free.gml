///db_free()

var key, ds;
while ds_map_size(DB_MAP){
    key = ds_map_find_first(DB_MAP)
    ds = DB_MAP[? key]
    if ds_exists( ds, ds_type_list) ds_list_destroy(ds); 
    else if ds_exists( ds, ds_type_grid) ds_grid_destroy(ds);
    ds_map_delete(DB_MAP, key);
};
ds_map_destroy(DB_MAP);