/// parse_string(str)

var str = argument0;

str = string_replace_all(str, "%PLAYER", player_get_name());

return str;