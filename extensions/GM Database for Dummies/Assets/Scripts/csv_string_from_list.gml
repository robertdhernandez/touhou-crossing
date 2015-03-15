///csv_string_from_list(list)

var list = argument0;
var sep = ",";

var str = "";
var length = ds_list_size(list);

var i, value;
for (i=0; i<length; i+=1){
    value = ds_list_find_value(list, i);
    value = string(value);
    
    if string_count(",", value)     value = "|"+value+"|";
    
    str += value;
    
    if i != length-1{
        str += ",";
    }
};

return str;