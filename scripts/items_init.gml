/// items_init()

enum item_type
{
    furniture,
    flower,
    flower_seed,
}

globalvar items;
var item;

items = ds_map_create();

///--------------------------
/// Debug
///--------------------------

item = ds_map_create();
item[?"name"] = "Japanese goblin";
item[?"type"] = item_type.furniture;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test", item);

item = ds_map_create();
item[?"name"] = "Green leaf";
item[?"type"] = item_type.furniture;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test1", item);

item = ds_map_create();
item[?"name"] = "Precious thing";
item[?"type"] = item_type.furniture;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test2", item);

item = ds_map_create();
item[?"name"] = "Funny hat";
item[?"type"] = item_type.furniture;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test3", item);

item = ds_map_create();
item[?"name"] = "Touhou Crossing";
item[?"type"] = item_type.furniture;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test4", item);

///--------------------------
/// Flowers
///--------------------------

item = ds_map_create();
item[?"name"] = "White Cosmo";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_cosmo_w;
item[?"image_index"] = 0;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_cosmo_w", item);

item = ds_map_create();
item[?"name"] = "Yellow Cosmo";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_cosmo_y;
item[?"image_index"] = 1;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_cosmo_y", item);

item = ds_map_create();
item[?"name"] = "Blue Cosmo";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_cosmo_b;
item[?"image_index"] = 2;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_cosmo_b", item);

item = ds_map_create();
item[?"name"] = "Red Tulip";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_tulip_r;
item[?"image_index"] = 3;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_tulip_r", item);

item = ds_map_create();
item[?"name"] = "White Tulip";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_tulip_w;
item[?"image_index"] = 4;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_tulip_w", item);

item = ds_map_create();
item[?"name"] = "Yellow Tulip";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_tulip_y;
item[?"image_index"] = 5;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_tulip_y", item);

item = ds_map_create();
item[?"name"] = "White Pansy";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_pansy_w;
item[?"image_index"] = 6;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_pansy_w", item);

item = ds_map_create();
item[?"name"] = "Purple Pansy";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_pansy_p;
item[?"image_index"] = 7;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_pansy_p", item);

item = ds_map_create();
item[?"name"] = "Yellow Pansy";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_pansy_y;
item[?"image_index"] = 8;
item[?"cost"] = 50;
ds_map_add_map(items, "flower_pansy_y", item);
