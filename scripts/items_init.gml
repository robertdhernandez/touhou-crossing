/// items_init()

/*enum item_type
{
    furniture = "furniture",
    flower = "flower",
    flower_seed = "flower_seed",
}*/

global.items = load_file_json("items.json", ds_type_map);

// TODO convert type string into enumerator for performance boost