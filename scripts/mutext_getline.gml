/// mutext_getline(mu, linenum)

var linestr = "";
var linenum = 1;
for (var i = 0; i < array_height_2d(argument0) and linenum <= argument1; i++)
    if (argument0[i,0] == "text")
    {
        if (linenum == argument1)
            linestr += argument0[i,1];
        linenum += argument0[i,2];
    }
return linestr;
