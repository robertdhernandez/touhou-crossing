///sprite_get_9patch(sprite)
/* Returns 9patch data in a list.
 * Order is as follows: { scaling area x[0] , scaling area y[1] , scaling area width[2] ,
                          scaling area height[3] , content x[4] , content y[5] ,
                          content width[6] , content height[7] }
 * Written by darkwalker247
 * http://gmc.yoyogames.com/index.php?showtopic=619295
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