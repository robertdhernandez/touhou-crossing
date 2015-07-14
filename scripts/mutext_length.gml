/// mutext_length(rt)

var len = 0;

for (var i = 0; i < array_height_2d(argument0); i++)
    if (argument0[i,0] == "text")
        len += string_length(argument0[i,1]);

return len;
