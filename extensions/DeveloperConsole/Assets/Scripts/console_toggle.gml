/// console_toggle()

/**************************************
* This script toggles the console,
* and should be placed in the Pressed
* event of a key of your choosing.
**************************************/

if !console_enabled {

    console_surface = surface_create(window_get_width(), window_get_height());
    surface_set_target(console_surface);
        draw_clear_alpha(c_black, 0);
        with (all) event_perform(ev_draw,0);
    surface_reset_target();
    
    instance_deactivate_all(true);
    keyboard_string = "";
    console_enabled = true;
    
} else {

    surface_free(console_surface);
    instance_activate_all();
    console_enabled = false;
    
}