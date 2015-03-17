///linker_leaf_add(Tree,Distx,Disty,Inst)
/*
*** Adds a new leaf to the Tree structure that will be Distx,DistY from the parent Tree (Or Leaf). Links an instance.
***
***Returns this Leaf Structure so that sub-leaves can be added.
***
*/
var M = argument0 ;
var SM = ds_map_create() ;


ds_map_add(SM,"PARENT",M) ; 
ds_map_add(SM,"dx",argument1) ;
ds_map_add(SM,"dy",argument2) ;
ds_map_add(SM,"Inst",argument3) ;
ds_map_add(SM,"Leaves",-1) ;

var L = ds_map_find_value(M,"Leaves") ;

if (ds_exists(L,ds_type_list))
    {
    ds_list_add(L,SM) ;
    }
 else
    {
    L = ds_list_create() ;
    ds_list_add(L,SM) ;
    }    
ds_map_replace(M,"Leaves",L) ;

return SM ; 