/// struct_init()

enum structure
{
    house,
    fountain,
    gate,
}

global.struct_info_count = 3; // modify when adding new structures

global.struct_info_obj[structure.house] = obj_struct_house;
global.struct_info_cost[structure.house] = 1000;
global.struct_info_key[structure.house] = ord('H');
global.struct_info_construct[structure.house] = 5;
global.struct_info_name[structure.house] = "House";

global.struct_info_obj[structure.fountain] = obj_struct_fountain;
global.struct_info_cost[structure.fountain] = 500;
global.struct_info_key[structure.fountain] = ord('F');
global.struct_info_construct[structure.fountain] = 2.5;
global.struct_info_name[structure.fountain] = "Fountain";

global.struct_info_obj[structure.gate] = obj_struct_gate;
global.struct_info_cost[structure.gate] = 250;
global.struct_info_key[structure.gate] = ord('G');
global.struct_info_construct[structure.gate] = 1.5;
global.struct_info_name[structure.gate] = "Gate";