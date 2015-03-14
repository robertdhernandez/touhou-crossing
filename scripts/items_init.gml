/// items_init()

enum item_type
{
    furniture,
}

global.items = ds_map_create();
var items = global.items;

var test_item = ds_map_create();
test_item[? "name"] = "Test";
test_item[? "type"] = item_type.furniture;
test_item[? "cost"] = 150;

ds_map_add_map(items, "test", test_item);
