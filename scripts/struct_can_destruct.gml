/// struct_can_demolish(id)

with (argument0)
{
    switch (object_index)
    {
        case obj_struct_project:
            return "";
        break;
    
        case obj_struct_house:
            if (occupancy == 0)
                return 0;
            else
                return "house is occupied";
        break;
    
        default: return 0;
    }
}