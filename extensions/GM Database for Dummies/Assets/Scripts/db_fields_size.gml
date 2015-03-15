///db_fields_size(category);

var list = db_fields_list(category);
var size = ds_list_size(list);
ds_list_destroy(list);

return size;