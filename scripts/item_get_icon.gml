/// item_get_icon(item_id)

switch (argument0[? "type"])
{
    case "furniture": 
    default:
        return spr_item_furniture;
        
    case "flower":
        return spr_item_gyroid;
}