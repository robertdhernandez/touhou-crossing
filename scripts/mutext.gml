/// mutext(str)

var str = argument0;
var len = string_length(str);

var mu;
var idx = 0;
var newline = false;

// iterate through each character
for ({var i = 1, a = 1}; i <= len; i++)
{
    // TODO handle new lines
    if (string_char_at(str, i) == '#' and
        string_char_at(str,i-1) != '\')
    {
        if (i-a > 0)
        {
            mu[idx,0] = "text";
            mu[idx,1] = string_copy(str, a, i-a);
            mu[idx,2] = newline;
            idx++;
        }
        
        a = i + 1;
        newline = true;
    }
    
    else if (string_char_at(str, i) == '[')
    {
        // add text of everything before tag
        if (i-a > 0)
        {
            mu[idx,0] = "text";
            mu[idx,1] = string_copy(str, a, i-a);
            mu[idx,2] = newline;
            idx++;
        }
    
        // find end of tag
        var b = i;
        while (string_char_at(str, b) != ']')
            b++;
            
        // parse the tag and argument (if exists)
        var tag = string_copy(str, i+1, b-i-1);
        var is_closing = string_char_at(tag, 1) == '/';
        
        mu[idx,1] = not is_closing;
        
        if (is_closing)
            mu[idx,0] = string_letters(tag);
        else
        {
            var eqpos = string_pos('=', tag);
            var has_arg = eqpos != 0;
        
            if (not has_arg)
                mu[idx,0] = string_letters(tag);
            else
            {
                mu[idx,0] = string_letters(string_copy(tag, 1, eqpos));
                mu[idx,2] = string_lettersdigits(string_copy(tag, eqpos+1, string_length(tag)-eqpos));
            }
        }

        idx++;
        
        // move index to character after tag
        i = b;
        a = i+1;
        newline = false;
    }
}

// add remaining str
if (i-a > 0)
{
    mu[idx,0] = "text";
    mu[idx,1] = string_copy(str, a, i-a);
    mu[idx,2] = newline;
}

return mu;
