/// mutext_string(rt)

var str = "";

for (var i = 0; i < array_height_2d(argument0); i++)
    if (argument0[i,0] == "text")
        str += argument0[i,1];

return str;
