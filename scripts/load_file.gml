/// load_file(file_name)

var file_path = working_directory + argument0;
var file = file_text_open_read(file_path);

if (file == -1)
{
    if (global.debug)
        show_error("Failed to open file " + argument0, true);
    return undefined;
}

var text = "";

while (!file_text_eof(file))
    text += file_text_readln(file);
    
file_text_close(file);

return text;