/// ui_init()

instance_create(0, 0, obj_ui_clock);
instance_create(0, 0, obj_ui_dialogue);
instance_create(0, 0, obj_ui_ticker);
instance_create(0, 0, obj_ui_money);
instance_create(0, 0, obj_ui_inventory);

global.np_info = sprite_get_9patch(spr_ui_inventory_info);