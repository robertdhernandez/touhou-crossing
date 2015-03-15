///link_tree_destroy(Tree)

var Tree = argument0 ;

var Leaves = ds_map_find_value(Tree,"Leaves") ;

var Size = ds_list_size(Leaves) ;

for(var i = 0 ; i < Size ; i++)
    {
    var Leaf = ds_list_find_value(Leaves,i) ;
    linker_tree_destroy(Leaf) ;
    }
ds_list_destroy(Leaves) ;
ds_map_destroy(Tree) ;