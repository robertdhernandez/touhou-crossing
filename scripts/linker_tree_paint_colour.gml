///linker_tree_paint_colour(Tree,Col) ;
/*
** Changes the image_blend variable of all instances stored in each leaf of the tree
** 
*/
var Tree = argument0 ;
var Leaves = ds_map_find_value(Tree,"Leaves") ;
var NLeaves = ds_list_size(Leaves) ;
var Col =  argument1 ;
    for(var i = 0 ; i < NLeaves ; i++)
        {
        var M = ds_list_find_value(Leaves,i) ;
        var Inst = ds_map_find_value(M,"Inst") ;
        with(Inst)
            {
            image_blend = Col ;
            if (ds_map_find_value(M,"Leaves"))
                {
                linker_tree_paint_colour(M,Col) ;
                }
            }
        
        
        }
    