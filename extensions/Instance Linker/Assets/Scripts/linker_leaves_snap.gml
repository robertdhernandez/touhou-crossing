///linker_leaves_snap(tree)
/*
** Snaps all the instances stored as leaves in the Linker Tree Stucture to their correct positions
** Recomend using in the End Step event or after position is alter
** Manipulates the x,y and image_angle variables of each instance
** Has No Return Value
*/



var Tree = argument0 ;
var Leaves = ds_map_find_value(Tree,"Leaves") ;
var NLeaves = ds_list_size(Leaves) ;



    for(var i = 0 ; i < NLeaves ; i++)
        {
        var M = ds_list_find_value(Leaves,i) ;
        var DX = ds_map_find_value(M,"dx") ;
        var DY = ds_map_find_value(M,"dy") ;
        var Inst = ds_map_find_value(M,"Inst") ;
        with(Inst)
            {
            image_angle = other.image_angle ;
            
        
            
            x = other.x + lengthdir_x(DX,image_angle) - lengthdir_y(DY,image_angle)  ;
            y = other.y + lengthdir_y(DX,image_angle) + lengthdir_x(DY,image_angle) ;
            var SM = ds_map_find_value(M,"Leaves") ;
            if ( (ds_exists(SM,ds_type_list)))
                {
                linker_leaves_snap(M) ;
                
                }
            }
        
        
        }
    