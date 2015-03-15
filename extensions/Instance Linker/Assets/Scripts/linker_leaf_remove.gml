///linker_leaf_remove(Tree,Leaf) 
/*
** Removes the given leaf and all child leaves from the Linker Tree Structure
** Returns the removed leaf structure which can be used as a Linker Tree Structure
**
*/

var Tree = argument0 ;
var Leaf = argument1 ;

var L = ds_map_find_value(Tree,"Leaves") ;
var P = ds_list_find_index(L,Leaf) ;
if (P >= 0)
    {
    ds_list_delete(L,Leaf) ;
    }
    
return Leaf ;