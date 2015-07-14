/// richtext(text)

var text = argument0;
var len = string_length(text);

var list;
var idx = 0;

var a = 1;

// iterate through each character
for (var i = 0; i < len; i++)
{
    if (string_char_at(text, i) == '[')
    {
        // add text of everything before tag
        list[idx, 0] = "text";
        list[idx, 1] = string_copy(text, a, i-a);
        idx++;
    
        // find end of tag
        var b = i;
        while (string_char_at(text, b) != ']')
            b++;
            
        // insert tag
        list[idx, 0] = string_copy(text, i+1, b-i-1);
        idx++;
        
        // move index to character after tag
        i = b + 1;
        a = i;
    }
}

// add remaining text
list[idx, 0] = "text";
list[idx, 1] = string_copy(text, a, i - a);

return list;
