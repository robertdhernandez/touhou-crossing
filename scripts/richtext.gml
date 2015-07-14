/// richtext(text)

var text = argument0;
var len = string_length(text);

var rt;
var idx = 0;

// iterate through each character
for ({var i = 1, a = 1}; i <= len; i++)
{
    if (string_char_at(text, i) == '[')
    {
        // add text of everything before tag
        rt[idx,0] = "text";
        rt[idx,1] = string_copy(text, a, i-a);
        idx++;
    
        // find end of tag
        var b = i;
        while (string_char_at(text, b) != ']')
            b++;
            
        // parse the tag and argument (if exists)
        var tag = string_copy(text, i+1, b-i-1);
        var is_closing = string_char_at(tag, 1) == '/';
        
        rt[idx,1] = not is_closing;
        
        if (is_closing)
            rt[idx,0] = string_letters(tag);
        else
        {
            var eqpos = string_pos('=', tag);
            var has_args = eqpos != 0;
        
            if (not has_args)
                rt[idx,0] = string_letters(tag);
            else
            {
                rt[idx,0] = string_letters(string_copy(tag, 1, eqpos));
                rt[idx,2] = string_lettersdigits(string_copy(tag, eqpos+1, string_length(tag)-eqpos));
            }
        }

        idx++;
        
        // move index to character after tag
        i = b + 1;
        a = i;
    }
}

// add remaining text
rt[idx,0] = "text";
rt[idx,1] = string_copy(text, a, i-a);

return rt;
