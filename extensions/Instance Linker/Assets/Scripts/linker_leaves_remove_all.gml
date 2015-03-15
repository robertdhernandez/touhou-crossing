///linker_leaves_remove_all(Tree) ;
/*
** Removes all leaves from the given tree
** OR Removes all sub-leaves from the given leaf
*/
var Tree = argument0 ;

var L = ds_map_find_value(Tree,"Leaves") ;
var S = ds_list_size(L) ;
for(var i = 0 ; i < S ; i++)
    {
    ds_list_delete(L,i) ;
    }
    
return Leaf ;