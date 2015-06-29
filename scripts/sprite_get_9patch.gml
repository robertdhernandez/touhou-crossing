#define sprite_get_9patch
///sprite_get_9patch(sprite)
/* Returns 9patch data in a list.
 * Order is as follows: { scaling area x[0] , scaling area y[1] , scaling area width[2] ,
                          scaling area height[3] , content x[4] , content y[5] ,
                          content width[6] , content height[7] }
 * Written by darkwalker247
 * Editted by KillerJaguar
 */
 
var spr_width, spr_height, surface, content_x, content_y, plist, found, travel;

spr_width = sprite_get_width(argument0);
spr_height = sprite_get_height(argument0);

surface = surface_create(spr_width, spr_height);
plist = ds_list_create();

if (not surface_exists(surface)) show_error("Failed to create surface for 9patch", true)
show_debug_message(sprite_get_name(argument0))
__surface_pixels(surface,spr_width,spr_height)

surface_set_target(surface);
draw_clear(c_white);
draw_sprite(argument0, 0, sprite_get_xoffset(argument0), sprite_get_yoffset(argument0));
surface_reset_target();

__surface_pixels(surface,spr_width,spr_height)

content_x = 0;
content_y = 0;
travel = 0;

// Scaling Area X [0]

found = false;
while (content_x < spr_width and not found) 
{
    if (surface_getpixel(surface, content_x, 0) == c_black) 
    {
        found = true;
        travel = content_x;
        ds_list_add(plist, travel); // {sax}
    }
    content_x++;
}

// Scaling Area Width [2]

found = false;
while (content_x < spr_width and not found) 
{
    if (surface_getpixel(surface, content_x, 0) != c_black)
    {
        found = true;
        ds_list_add(plist, content_x - travel); // {sax, saw}
    }
    content_x++;
}

// Scaling Area Y [1]

found = false;
while (content_y < spr_height and not found)
{
    if (surface_getpixel(surface, 0, content_y) == c_black)
    {
        found = true;
        travel = content_y;
        ds_list_insert(plist, 1, travel); // {sax, say, saw}
    }
    content_y++;
}

// Scaling Area Height [3]

found = false;
while (content_y < spr_height and not found) 
{
    if (surface_getpixel(surface, 0, content_y) != c_black)
    {
        found = true;
        ds_list_add(plist, content_y - travel); // {sax, say, saw, sah}
    }
    content_y++;
}

content_x = 0;
content_y = 0;

// Content X [4]

found = false;
while (content_x < spr_width and not found)
{
    if (surface_getpixel(surface, content_x, spr_height - 1) == c_black)
    {
        found = true;
        travel = content_x;
        ds_list_add(plist, travel); // {sax, say, saw, sah, cx}
    }
    content_x++;
}

// Content Width [6]

found = false;
while (content_x < spr_width and not found)
{
    if (surface_getpixel(surface, content_x, spr_height - 1) != c_black)
    {
        found = true;
        ds_list_add(plist, content_x - travel); // {sax, say, saw, sah, cx, cw}
    }
    content_x++;
}

// Content Y [5]

found = false;
while (content_y < spr_height and not found) 
{
    if (surface_getpixel(surface, spr_width - 1, content_y) == c_black)
    {
        found = true;
        travel = content_y;
        ds_list_insert(plist, 5, travel); // {sax, say, saw, sah, cx, cy, cw}
    }
    content_y++;
}

// Content Height [7]

found = false;
while (content_y < spr_height and not found)
{
    if (surface_getpixel(surface, spr_width - 1, content_y) != c_black)
    {
        found = true;
        ds_list_add(plist, content_y - travel); // {sax, say, saw, sah, cx, cy, cw, ch}
    }
    content_y++;
}

surface_free(surface);

show_debug_message(string(ds_list_size(plist)))

return plist;

#define sprite_get_9patch__backup
///sprite_get_9patch(sprite)
/* Returns 9patch data in a list.
 * Order is as follows: { scaling area x[0] , scaling area y[1] , scaling area width[2] ,
                          scaling area height[3] , content x[4] , content y[5] ,
                          content width[6] , content height[7] }
 * Written by darkwalker247
 */
var sw,sh,ts,cx,cy,pl,fd,tv;
sw=sprite_get_width(argument0)
sh=sprite_get_height(argument0)
ts=surface_create(sw,sh)
pl=ds_list_create()

surface_set_target(ts)
draw_clear(c_white)
draw_sprite(argument0,0,sprite_get_xoffset(argument0),sprite_get_yoffset(argument0))
surface_reset_target()

cx=0
cy=0
tv=0
//SA X
fd=0
while cx<sw && !fd {
    if surface_getpixel(ts,cx,0)=c_black {
        fd=1
        tv=cx
        ds_list_add(pl,tv)
    }
    cx+=1
}

//SA W
fd=0
while cx<sw && !fd {
    if surface_getpixel(ts,cx,0)!=c_black {
        fd=1
        ds_list_add(pl,cx-tv)
    }
    cx+=1
}

//SA Y
fd=0
while cy<sh && !fd {
    if surface_getpixel(ts,0,cy)=c_black {
        fd=1
        tv=cy
        ds_list_insert(pl,1,tv)
    }
    cy+=1
}

//SA H
fd=0
while cy<sh && !fd {
    if surface_getpixel(ts,0,cy)!=c_black {
        fd=1
        ds_list_add(pl,cy-tv)
    }
    cy+=1
}

cx=0
cy=0
//C X
fd=0
while cx<sw && !fd {
    if surface_getpixel(ts,cx,sh-1)=c_black {
        fd=1
        tv=cx
        ds_list_add(pl,tv)
    }
    cx+=1
}

//C W
fd=0
while cx<sw && !fd {
    if surface_getpixel(ts,cx,sh-1)!=c_black {
        fd=1
        ds_list_add(pl,cx-tv)
    }
    cx+=1
}

//C Y
fd=0
while cy<sh && !fd {
    if surface_getpixel(ts,sw-1,cy)=c_black {
        fd=1
        tv=cy
        ds_list_insert(pl,5,tv)
    }
    cy+=1
}

//C H
fd=0
while cy<sh && !fd {
    if surface_getpixel(ts,sw-1,cy)!=c_black {
        fd=1
        ds_list_add(pl,cy-tv)
    }
    cy+=1
}

surface_free(ts)
return pl;

#define sprite_get_9patch__edited
///sprite_get_9patch(sprite)
/* Returns 9patch data in a list.
 * Order is as follows: { scaling area x[0] , scaling area y[1] , scaling area width[2] ,
                          scaling area height[3] , content x[4] , content y[5] ,
                          content width[6] , content height[7] }
 * Written by darkwalker247
 * Editted by KillerJaguar
 */
 
var spr_width, spr_height, surface, content_x, content_y, plist, found, travel;

spr_width = sprite_get_width(argument0);
spr_height = sprite_get_height(argument0);

surface = surface_create(spr_width, spr_height);
if (not surface_exists(surface)) show_error("Failed to create surface for 9patch", true)

plist = ds_list_create();

surface_set_target(surface);
draw_clear(c_white);
draw_sprite(argument0, 0, sprite_get_xoffset(argument0), sprite_get_yoffset(argument0));
surface_reset_target();

for (var yy = 0; yy < spr_height; yy++)
{
    var str = "{ "
    for (var xx = 0; xx < spr_width; xx++)
    {
        str += string(surface_getpixel(surface, xx, yy)) + " "
    }
    str += "}"
    show_debug_message(str)
}

content_x = 0;
content_y = 0;
travel = 0;

// Scaling Area X [0]

found = false;
while (content_x < spr_width and not found) 
{
    if (surface_getpixel(surface, content_x, 0) == c_black) 
    {
        found = true;
        travel = content_x;
        ds_list_add(plist, travel); // {sax}
    }
    content_x++;
}

// Scaling Area Width [2]

found = false;
while (content_x < spr_width and not found) 
{
    if (surface_getpixel(surface, content_x, 0) != c_black)
    {
        found = true;
        ds_list_add(plist, content_x - travel); // {sax, saw}
    }
    content_x++;
}

// Scaling Area Y [1]

found = false;
while (content_y < spr_height and not found)
{
    if (surface_getpixel(surface, 0, content_y) == c_black)
    {
        found = true;
        travel = content_y;
        ds_list_insert(plist, 1, travel); // {sax, say, saw}
    }
    content_y++;
}

// Scaling Area Height [3]

found = false;
while (content_y < spr_height and not found) 
{
    if (surface_getpixel(surface, 0, content_y) != c_black)
    {
        found = true;
        ds_list_add(plist, content_y - travel); // {sax, say, saw, sah}
    }
    content_y++;
}

content_x = 0;
content_y = 0;

// Content X [4]

found = false;
while (content_x < spr_width and not found)
{
    if (surface_getpixel(surface, content_x, spr_height - 1) == c_black)
    {
        found = true;
        travel = content_x;
        ds_list_add(plist, travel); // {sax, say, saw, sah, cx}
    }
    content_x++;
}

// Content Width [6]

found = false;
while (content_x < spr_width and not found)
{
    if (surface_getpixel(surface, content_x, spr_height - 1) != c_black)
    {
        found = true;
        ds_list_add(plist, content_x - travel); // {sax, say, saw, sah, cx, cw}
    }
    content_x++;
}

// Content Y [5]

found = false;
while (content_y < spr_height and not found) 
{
    if (surface_getpixel(surface, spr_width - 1, content_y) == c_black)
    {
        found = true;
        travel = content_y;
        plist[| 5] = travel;
        //ds_list_insert(plist, 5, travel); // {sax, say, saw, sah, cx, cy, cw}
    }
    content_y++;
}

// Content Height [7]

found = false;
while (content_y < spr_height and not found)
{
    if (surface_getpixel(surface, spr_width - 1, content_y) != c_black)
    {
        found = true;
        ds_list_add(plist, content_y - travel); // {sax, say, saw, sah, cx, cy, cw, ch}
    }
    content_y++;
}

surface_free(surface);

show_debug_message(string(ds_list_size(plist)))
//if (ds_list_size(plist) != 7) 
//    show_error("Failed to create 9patch: " + string(ds_list_size(plist)), true);

return plist;

#define __surface_pixels
for (var yy = 0; yy < argument2; yy++)
{
    var str = "{ "
    for (var xx = 0; xx < argument1; xx++)
    {
        str += string(surface_getpixel(argument0, xx, yy)) + " "
    }
    str += "}"
    show_debug_message(str)
}
show_debug_message("")
