/// console_draw(x,y,width,bg color 1,bg color 2,text color 1,text color 2,alpha)

/**************************************
* This script draws the console. You
* can set the coordinates, colors and
* alpha. Height is derived from the
* number of rows you specified when
* initializing the console in the Create
* event.
*
* Example Use:
* console_draw(10,10,400,c_navy,c_blue,c_white,c_yellow,0.8);
**************************************/

var xx=argument0,yy=argument1,w=argument2,
r=console_history_rows,l=string_height("l")+12,
m=10;

if console_enabled = true {

    /* Freeze screen */
    if surface_exists(console_surface) then 
    draw_surface(console_surface, view_xview[0], view_xview[0]);
    
    /* Header */
    draw_set_alpha(argument7);
    draw_set_color(argument3);    
    draw_rectangle(xx,yy,xx+w,yy+l,0);   
    draw_set_color(argument6);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_right); 
    draw_text(xx+w-m,yy+l/2,string(fps)+" / "+string(room_speed));
    
    /* History */
    draw_set_color(argument4);
    draw_rectangle(xx,yy+l,xx+w,yy+l+(r*l),0); 
    draw_set_color(argument5);
    draw_set_halign(fa_left); 
    for (i=0;i<r;i++) 
    draw_text(xx+m,(yy+l+(r*l)-l/2)-(i*l),ds_list_find_value(console_history,i));
    
    /* Submit */
    draw_set_color(argument3);
    draw_rectangle(xx,yy+l+(r*l),xx+w,yy+l*2+(r*l),0);    
    draw_set_color(argument6);    
    draw_text(xx+m,yy+l+(r*l)+l/2,">");    
    draw_set_color(argument5);    
    draw_text(xx+m+string_width("> "),yy+l+(r*l)+l/2,console_string);   
    draw_set_alpha(console_cursor_alpha);    
    draw_text(xx+m+string_width("> "+console_string),yy+l+(r*l)+l/2,"|");
    
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
}