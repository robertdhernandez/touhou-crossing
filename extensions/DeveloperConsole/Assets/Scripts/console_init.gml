/// console_init(close on submit,number of history rows, seperator)

/**************************************
* This initiates the developer console, 
* and thus should be called in the 
* Create event. Customize the console
* with the arguments above, eg:
*
* console_init(true,6,",");
**************************************/

var i;
console_enabled = false;
console_string = "";
console_cursor_count = 0;
console_cursor_alpha = 1;
console_set_screenshot = false;
console_close = argument0;
console_history_rows = argument1;
console_sep = argument2;

console_history = ds_list_create();
for(i=0;i<console_history_rows;i++) {
    ds_list_add(console_history,"");
}