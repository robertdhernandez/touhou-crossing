/// inventory_show()

global.ui_inventory.show = true;
global.ui_inventory.visible = true;

global.player_input = false;
global.ui_clock.can_show = false;

audio_play_sound(snd_pause, 0, false);
