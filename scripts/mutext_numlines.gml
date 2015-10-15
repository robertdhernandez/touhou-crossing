/// mutext_numlines(mu)

var count = 1;
for (var i = 0; i < array_height_2d(argument0); i++)
    if (argument0[i,0] == "text")
        count += argument[i,2];
return count;
