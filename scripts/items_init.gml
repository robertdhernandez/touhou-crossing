/// items_init()

enum item_type
{
    furniture,
}

global.items = ds_map_create();
var items = global.items;

var test_item = ds_map_create();
test_item[? "name"] = "Japanese goblin";
test_item[? "type"] = item_type.furniture;
test_item[? "cost"] = 150;
ds_map_add_map(items, "test", test_item);

test_item = ds_map_create();
test_item[? "name"] = "Green leaf";
test_item[? "type"] = item_type.furniture;
test_item[? "cost"] = 150;
ds_map_add_map(items, "test1", test_item);

test_item = ds_map_create();
test_item[? "name"] = "Precious thing";
test_item[? "type"] = item_type.furniture;
test_item[? "cost"] = 150;
ds_map_add_map(items, "test2", test_item);

test_item = ds_map_create();
test_item[? "name"] = "Funny hat";
test_item[? "type"] = item_type.furniture;
test_item[? "cost"] = 150;
ds_map_add_map(items, "test3", test_item);

test_item = ds_map_create();
test_item[? "name"] = "Touhou Crossing";
test_item[? "type"] = item_type.furniture;
test_item[? "cost"] = 150;
ds_map_add_map(items, "test4", test_item);