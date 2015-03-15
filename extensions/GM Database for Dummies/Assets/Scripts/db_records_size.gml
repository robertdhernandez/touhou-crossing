///db_records_size(category);

var list = db_records_list(category);
var size = ds_list_size(list);
ds_list_destroy(list);

return size;