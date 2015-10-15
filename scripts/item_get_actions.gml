/// item_get_actions(item_id)

var actions;
var count = 0;

actions[count++] = "Grab";

switch (argument0[? "type"])
{
    case "furniture":
        actions[count++] = "Drop";
    break;
    
    case "flower":
        actions[count++] = "Plant";
    break;
}

actions[count++] = "Nevermind";

return actions;
