/// items_init()

enum item_type
{
    unknown,
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
item[?"type"] = item_type.unknown;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test", item);

item = ds_map_create();
item[?"name"] = "Green leaf";
item[?"type"] = item_type.unknown;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test1", item);

item = ds_map_create();
item[?"name"] = "Precious thing";
item[?"type"] = item_type.unknown;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test2", item);

item = ds_map_create();
item[?"name"] = "Funny hat";
item[?"type"] = item_type.unknown;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test3", item);

item = ds_map_create();
item[?"name"] = "Touhou Crossing";
item[?"type"] = item_type.unknown;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
ds_map_add_map(items, "test4", item);

///--------------------------
/// Debug Furniture
///--------------------------

item = ds_map_create();
item[?"name"] = "table";
item[?"type"] = item_type.furniture;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
item[?"object"] = obj_interior_table;
ds_map_add_map(items, "test_table", item);

item = ds_map_create();
item[?"name"] = "chair";
item[?"type"] = item_type.furniture;
item[?"icon"] = spr_item_furniture;
item[?"cost"] = 150;
item[?"object"] = obj_interior_chair;
ds_map_add_map(items, "test_chair", item);

///--------------------------
/// Flowers
///--------------------------

item = ds_map_create();
item[?"name"] = "white cosmo";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_cosmo_w;
item[?"cost"] = 50;
item[?"image_index"] = 0;
ds_map_add_map(items, "flower_cosmo_w", item);

item = ds_map_create();
item[?"name"] = "yellow cosmo";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_cosmo_y;
item[?"cost"] = 50;
item[?"image_index"] = 1;
ds_map_add_map(items, "flower_cosmo_y", item);

item = ds_map_create();
item[?"name"] = "blue cosmo";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_cosmo_b;
item[?"cost"] = 50;
item[?"image_index"] = 2;
ds_map_add_map(items, "flower_cosmo_b", item);

item = ds_map_create();
item[?"name"] = "red tulip";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_tulip_r;
item[?"cost"] = 50;
item[?"image_index"] = 3;
ds_map_add_map(items, "flower_tulip_r", item);

item = ds_map_create();
item[?"name"] = "white tulip";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_tulip_w;
item[?"cost"] = 50;
item[?"image_index"] = 4;
ds_map_add_map(items, "flower_tulip_w", item);

item = ds_map_create();
item[?"name"] = "yellow tulip";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_tulip_y;
item[?"cost"] = 50;
item[?"image_index"] = 5;
ds_map_add_map(items, "flower_tulip_y", item);

item = ds_map_create();
item[?"name"] = "white pansy";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_pansy_w;
item[?"cost"] = 50;
item[?"image_index"] = 6;
ds_map_add_map(items, "flower_pansy_w", item);

item = ds_map_create();
item[?"name"] = "purple pansy";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_pansy_p;
item[?"cost"] = 50;
item[?"image_index"] = 7;
ds_map_add_map(items, "flower_pansy_p", item);

item = ds_map_create();
item[?"name"] = "yellow pansy";
item[?"type"] = item_type.flower;
item[?"icon"] = spr_item_pansy_y;
item[?"cost"] = 50;
item[?"image_index"] = 8;
ds_map_add_map(items, "flower_pansy_y", item);

///--------------------------
/// Flower Seeds
///--------------------------

item = ds_map_create();
item[?"name"] = "white cosmo bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_cosmo_w"];
ds_map_add_map(items, "seed_cosmo_w", item);

item = ds_map_create();
item[?"name"] = "yellow cosmo bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_cosmo_y"];
ds_map_add_map(items, "seed_cosmo_y", item);

item = ds_map_create();
item[?"name"] = "blue cosmo bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_cosmo_b"];
ds_map_add_map(items, "seed_cosmo_b", item);

item = ds_map_create();
item[?"name"] = "red tulip bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_tulip_r"];
ds_map_add_map(items, "seed_tulip_r", item);

item = ds_map_create();
item[?"name"] = "white tulip bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_tulip_w"];
ds_map_add_map(items, "seed_tulip_w", item);

item = ds_map_create();
item[?"name"] = "yellow tulip bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_tulip_y"];
ds_map_add_map(items, "seed_tulip_y", item);

item = ds_map_create();
item[?"name"] = "white pansy bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_pansy_w"];
ds_map_add_map(items, "seed_pansy_w", item);

item = ds_map_create();
item[?"name"] = "purple pansy bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_pansy_p"];
ds_map_add_map(items, "seed_pansy_p", item);

item = ds_map_create();
item[?"name"] = "yellow pansy bag";
item[?"type"] = item_type.flower_seed;
item[?"icon"] = spr_item_seed;
item[?"cost"] = 50;
item[?"flower_item"] = items[?"flower_pansy_y"];
ds_map_add_map(items, "seed_pansy_y", item);
