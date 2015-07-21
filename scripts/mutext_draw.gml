/// mutext_draw(x, y, mu)

var xx = argument0;
var yy = argument1;
var mu = argument2;

var orig_color = draw_get_color();
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var len = array_height_2d(mu);
for (var i = 0; i < len; i++)
{
    var tag = mu[i,0];
    switch (tag)
    {
        case "text":
            var str = mu[i,1];
        
            if (mu[i,2])
            {
                xx = argument0;
                yy += string_height(str);
            }
            
            draw_text(xx, yy, str);
            xx += string_width(str);
        break;
        
        case "color":
            if (mu[i,1])
            {
                var color = mu[i,2];
                if (string_char_at(color, 1) == '#')
                {
                    // TODO convert hexadecimal string to color
                }
                else
                {
                    switch (string_lower(color))
                    {
                        case "aqua":    draw_set_color(c_aqua); break;
                        case "black":   draw_set_color(c_black); break;
                        case "blue":    draw_set_color(c_blue); break;
                        case "dkgray":  draw_set_color(c_dkgray); break;
                        case "fuchsia": draw_set_color(c_fuchsia); break;
                        case "gray":    draw_set_color(c_gray); break;
                        case "green":   draw_set_color(c_green); break;
                        case "lime":    draw_set_color(c_lime); break;
                        case "ltgray":  draw_set_color(c_ltgray); break;
                        case "maroon":  draw_set_color(c_maroon); break;
                        case "navy":    draw_set_color(c_navy); break;
                        case "olive":   draw_set_color(c_olive); break;
                        case "orange":  draw_set_color(c_orange); break;
                        case "purple":  draw_set_color(c_purple); break;
                        case "red":     draw_set_color(c_red); break;
                        case "silver":  draw_set_color(c_silver); break;
                        case "teal":    draw_set_color(c_teal); break;
                        case "white":   draw_set_color(c_white); break;
                        case "yellow":  draw_set_color(c_yellow); break;
                        default: 
                            show_debug_message("Unknown color '" + color + "'"); break;
                    }
                }
            }
            else
                draw_set_color(orig_color);
        break;
        
        default:
            show_debug_message("Unhandled tag '" + tag + "'");
        break;
    }
}