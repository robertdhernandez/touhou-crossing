///linker_tree_trigger_event(Tree,Event,Num)

var Tree = argument0 ;
var Event = argument1 ;
var Numb  = argument2 ;

var List = ds_list_create() ;


var Leaves = ds_map_find_value(Tree,"Leaves") ;
var NLeaves = ds_list_size(Leaves) ;



    for(var i = 0 ; i < NLeaves ; i++)
        {
        var M = ds_list_find_value(Leaves,i) ;
     
        var Inst = ds_map_find_value(M,"Inst") ;
        with(Inst)
            {
            event_perform(Event,Numb) ;
            var SM = ds_map_find_value(M,"Leaves") ;
            if ( (ds_exists(SM,ds_type_list)))
                {
                linker_tree_trigger_event(M,Event,Numb) ;
                
                }
            }
        
        
        }
    