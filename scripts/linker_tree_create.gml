///linker_tree_create()
/*
** Create the Linker Tree Structure for further use
**
**
*/

var M = ds_map_create() ;
ds_map_add(M,"Leaves",ds_list_create()) ;
return M ;