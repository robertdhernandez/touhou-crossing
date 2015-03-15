/// console_commands(array,number of arguments)
var a=argument0,n=argument1,cmd=a[0];

/***********************************************
* Here is where you can place all of your console 
* commands. The variable 'cmd' is the initital command. 
* 'n' is the number of arguments submitted. You can use 
* 'a[number]' to reference an argument. 
* If your cmd requires arguments, you can use 'n' to 
* check the correct amount of arguments have been 
* submitted in an effort to prevent errors. Arguments 
* by default are strings, so if you need to convert
* it to a number/real value, enclose it in real() eg.
* real(a[1])
***********************************************/

/************************************
* EXAMPLE COMMANDS
************************************/
if cmd = "game_end" then game_end();

if cmd = "game_restart" then game_restart();

if cmd = "room_speed" && n = 1 then room_speed = real(a[1]);

if cmd = "background_color" && n = 3 then 
background_colour = make_color_rgb(real(a[1]),real(a[2]),real(a[3]));

if cmd = "circle_color" && n = 3 then with obj_Circle
image_blend = make_color_rgb(real(a[1]),real(a[2]),real(a[3]));

if cmd = "circle_color" && n = 3 then with obj_Circle
image_blend = make_color_rgb(real(a[1]),real(a[2]),real(a[3]));

if cmd = "circle_alpha" && n = 1 then with obj_Circle
image_alpha = real(a[1]);