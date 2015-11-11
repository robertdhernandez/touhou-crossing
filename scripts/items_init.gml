/// items_init()

enum item_type
{
    furniture,
    flower,
    flower_seed,
}

globalvar items;
items = ds_map_create();

///--------------------------
/// Debug
///--------------------------

var test_item = ds_map_create();
test_item[?"name"] = "Japanese goblin";
test_item[?"type"] = item_type.furniture;
test_item[?"icon"] = spr_item_furniture;
test_item[?"cost"] = 150;
ds_map_add_map(items, "test", test_item);

test_item = ds_map_create();
test_item[?"name"] = "Green leaf";
test_item[?"type"] = item_type.furniture;
test_item[?"icon"] = spr_item_furniture;
test_item[?"cost"] = 150;
ds_map_add_map(items, "test1", test_item);

test_item = ds_map_create();
test_item[?"name"] = "Precious thing";
test_item[?"type"] = item_type.furniture;
test_item[?"icon"] = spr_item_furniture;
test_item[?"cost"] = 150;
ds_map_add_map(items, "test2", test_item);

test_item = ds_map_create();
test_item[?"name"] = "Funny hat";
test_item[?"type"] = item_type.furniture;
test_item[?"icon"] = spr_item_furniture;
test_item[?"cost"] = 150;
ds_map_add_map(items, "test3", test_item);

test_item = ds_map_create();
test_item[?"name"] = "Touhou Crossing";
test_item[?"type"] = item_type.furniture;
test_item[?"icon"] = spr_item_furniture;
test_item[?"cost"] = 150;
ds_map_add_map(items, "test4", test_item);

///--------------------------
/// Flowers
///--------------------------

var flower_cosmo_w = ds_map_create();
flower_cosmo_w[?"name"] = "White Cosmo";
flower_cosmo_w[?"type"] = item_type.flower;
flower_cosmo_w[?"icon"] = spr_item_cosmo_w;
flower_cosmo_w[?"cost"] = 50;
ds_map_add_map(items, "flower_cosmo_w", flower_cosmo_w);

var flower_cosmo_y = ds_map_create();
flower_cosmo_y[?"name"] = "Yellow Cosmo";
flower_cosmo_y[?"type"] = item_type.flower;
flower_cosmo_y[?"icon"] = spr_item_cosmo_y;
flower_cosmo_y[?"cost"] = 50;
ds_map_add_map(items, "flower_cosmo_y", flower_cosmo_y);

var flower_cosmo_b = ds_map_create();
flower_cosmo_b[?"name"] = "Blue Cosmo";
flower_cosmo_b[?"type"] = item_type.flower;
flower_cosmo_b[?"icon"] = spr_item_cosmo_b;
flower_cosmo_b[?"cost"] = 50;
ds_map_add_map(items, "flower_cosmo_b", flower_cosmo_b);

var flower_tulip_r = ds_map_create();
flower_tulip_r[?"name"] = "Red Tulip";
flower_tulip_r[?"type"] = item_type.flower;
flower_tulip_r[?"icon"] = spr_item_tulip_r;
flower_tulip_r[?"cost"] = 50;
ds_map_add_map(items, "flower_tulip_r", flower_tulip_r);

var flower_tulip_w = ds_map_create();
flower_tulip_w[?"name"] = "White Tulip";
flower_tulip_w[?"type"] = item_type.flower;
flower_tulip_w[?"icon"] = spr_item_tulip_w;
flower_tulip_w[?"cost"] = 50;
ds_map_add_map(items, "flower_tulip_w", flower_tulip_w);

var flower_tulip_y = ds_map_create();
flower_tulip_y[?"name"] = "Yellow Tulip";
flower_tulip_y[?"type"] = item_type.flower;
flower_tulip_y[?"icon"] = spr_item_tulip_y;
flower_tulip_y[?"cost"] = 50;
ds_map_add_map(items, "flower_tulip_y", flower_tulip_y);

var flower_pansy_w = ds_map_create();
flower_pansy_w[?"name"] = "White Pansy";
flower_pansy_w[?"type"] = item_type.flower;
flower_pansy_w[?"icon"] = spr_item_pansy_w;
flower_pansy_w[?"cost"] = 50;
ds_map_add_map(items, "flower_pansy_w", flower_pansy_w);

var flower_pansy_p = ds_map_create();
flower_pansy_p[?"name"] = "Purple Pansy";
flower_pansy_p[?"type"] = item_type.flower;
flower_pansy_p[?"icon"] = spr_item_pansy_p;
flower_pansy_p[?"cost"] = 50;
ds_map_add_map(items, "flower_pansy_p", flower_pansy_p);

var flower_pansy_y = ds_map_create();
flower_pansy_y[?"name"] = "Yellow Pansy";
flower_pansy_y[?"type"] = item_type.flower;
flower_pansy_y[?"icon"] = spr_item_pansy_y;
flower_pansy_y[?"cost"] = 50;
ds_map_add_map(items, "flower_pansy_y", flower_pansy_y);
