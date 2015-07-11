/// parse_string(str)

var str = argument0;

/// Replace all instances of %PLAYER with the player name
str = string_replace_all(str, "%PLAYER", global.player_name);

/// Break up string into lines

globalvar ui_dialogue;

var lines = ds_list_create();
var len = string_length(str);

draw_set_font(ui_dialogue.font);

var a = 0;
for (var i = 0; i < len; i++)
{
    var substr = string_copy(str, a, i - a);
    
    // Only go further if line exceeds width
    if (string_width(substr) < ui_dialogue.inst_text.text_width)
        continue;
    
    var j = string_length(substr); // == i - a
    
    // Reverse to first space character
    while (string_char_at(substr, j) != ' ')
        j--;
        
    // Update the a position to the first letter of the excessive word
    a = a + j + 1;
    
    // Reverse to the first non-space character
    while (string_char_at(substr, j) == ' ')
        j--;
    
    // Create new line
    ds_list_add(lines, string_copy(substr, 0, j));
}

// Add remaining text to line
ds_list_add(lines, string_copy(str, a, len - a));

// Convert the lines into a single string
str = "";
for (var i = 0; i < ds_list_size(lines); i++)
    str += lines[| i] + '#';
ds_list_destroy(lines);

return str;