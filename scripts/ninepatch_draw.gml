///ninepatch_draw(ninepatch, sprite, subimg, x, y, w, h, color, alpha)
/* Draws a sprite with 9patch, using a data returned from sprite_get_9patch.
 * Written by darkwalker247
 * http://gmc.yoyogames.com/index.php?showtopic=619295
 */
var sp,sub,col,alp,ow,oh,nl,bx,by,bw,bh,sx,sy,sw,sh,cx,cy,cw,ch,sxs,sys,x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,x7,y7,x8,y8,x9,y9;


sp=argument1
sub=argument2
col=argument7
alp=argument8
ow=sprite_get_width(sp)-2
oh=sprite_get_height(sp)-2
nl=argument0
bx=argument3-(sprite_get_xoffset(argument1))*(argument5/(ow))
by=argument4-(sprite_get_yoffset(argument1))*(argument6/(ow))
bw=argument5
bh=argument6
sx=argument0[0]+1//ds_list_find_value(nl,0)+1
sy=argument0[1]+1//ds_list_find_value(nl,1)+1
sw=argument0[2]//ds_list_find_value(nl,2)
sh=argument0[3]//ds_list_find_value(nl,3)
cx=argument0[4]//ds_list_find_value(nl,4)
cy=argument0[5]//ds_list_find_value(nl,5)
cw=argument0[6]//ds_list_find_value(nl,6)
ch=argument0[7]//ds_list_find_value(nl,7)
sxw=bw-(sx+(ow-(sx+sw)))
syh=bh-(sy+(oh-(sy+sh)))
sxs=sxw/sw
sys=syh/sh
x1=bx
y1=by
x2=bx+sx
y2=by
x3=x2+sxw
y3=by
x4=x3
y4=by+sy
x5=x3
y5=y4+syh
x6=x2
y6=y5
x7=bx
y7=y5
x8=bx
y8=y4
x9=bx+sx
y9=by+sy

draw_sprite_part_ext(sp,sub,1,1,sx,sy,x1,y1,1,1,col,alp) //1
draw_sprite_part_ext(sp,sub,sx,1,sw,sy,x2,y2,sxs,1,col,alp) //2
draw_sprite_part_ext(sp,sub,sx+sw,1,(ow+1)-(sx+sw),sy,x3,y3,1,1,col,alp) //3
draw_sprite_part_ext(sp,sub,sx+sw,sy,(ow+1)-(sx+sw),sh,x4,y4,1,sys,col,alp) //4
draw_sprite_part_ext(sp,sub,sx+sw,sy+sh,(ow+1)-(sx+sw),(oh+1)-(sy+sh),x5,y5,1,1,col,alp) //5
draw_sprite_part_ext(sp,sub,sx,sy+sh,sw,(oh+1)-(sy+sh),x6,y6,sxs,1,col,alp) //6
draw_sprite_part_ext(sp,sub,1,sy+sh,sx,(oh+1)-(sy+sh),x7,y7,1,1,col,alp) //7
draw_sprite_part_ext(sp,sub,1,sy,sx,sh,x8,y8,1,sys,col,alp) //8
draw_sprite_part_ext(sp,sub,sx,sy,sw,sh,x9,y9,sxs,sys,col,alp) //9