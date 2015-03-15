/// ui_show_info(x, y, text)

// TODO have it move slightly when drawn

draw_set_font(global.font_dialogue);
    
var name = argument2;
var width = string_width(name);
var height = 16;

var np = global.np_info;
var spr = spr_ui_inventory_info;
var xx = argument0 - width / 3;
var yy = argument1;

sprite_draw_9patch(np, spr, 0, xx, yy, width + 17, height, c_white, 1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(xx + 10, yy + 4, name);