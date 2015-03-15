/// console_step()

/**************************************
* This script does not require any
* arguments, just place it in the Step
* event.
**************************************/

if console_enabled = true {

    /* Set console string */
    console_string = keyboard_string;
    
    /* Flashing cursor effect */
    console_cursor_count += 2/room_speed;
    if console_cursor_count > 1 {
        if console_cursor_alpha = 1 then
        console_cursor_alpha = 0 else console_cursor_alpha = 1;
        console_cursor_count = 0;
    }
    
    /* Get last command */
    if keyboard_check_pressed(vk_up) then
    keyboard_string = ds_list_find_value(console_history,0);
    
    /* Submit console string */
    if keyboard_check_pressed(vk_enter) {
    
        var i,len,no,c;
    
        /* Add to history */
        ds_list_insert(console_history,0,console_string);
        ds_list_delete(console_history,console_history_rows);
    
        /* Split console string */
        len = string_length(console_sep)-1;
        no = string_count(console_sep,console_string);
        for(i=0; i<=no; i+=1;) {
            c[i] = console_string;
            repeat (i)
                c[i] = string_delete(c[i],1,string_pos(console_sep,c[i])+len);
            c[i] = string_delete(c[i],string_pos(console_sep,c[i]),string_length(c[i]));
        }
        
        /* Perform command */
        instance_activate_all();
        console_commands(c,no);
        keyboard_string = "";
        
        /* Close console on command submit */
        if console_close = true {
            surface_free(console_surface);
            console_enabled = false;
        } else instance_deactivate_all(true);

    }

}