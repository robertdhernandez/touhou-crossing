/// input_check(input)

enum input
{
    a,
    b,
    c,
    d,
    start,
    up,
    down,
    left,
    right,
}

switch (argument0)
{
    case input.a: 
        return keyboard_check(ord('Z')) 
            or gamepad_button_check(0, gp_face1);
        
    case input.b: 
        return keyboard_check(ord('X')) 
            or gamepad_button_check(0, gp_face2);
            
    case input.c: 
        return keyboard_check(ord('C')) 
            or gamepad_button_check(0, gp_face3);
            
    case input.d: 
        return keyboard_check(ord('V')) 
            or gamepad_button_check(0, gp_face4);
            
    case input.start:
        return keyboard_check(vk_enter) 
            or gamepad_button_check(0, gp_start);
        
    case input.up:
        return keyboard_check(vk_up) 
            or gamepad_button_check(0, gp_padu)
            or gamepad_axis_value(0, gp_axislv) < 0;
        
    case input.down:
        return keyboard_check(vk_down) 
            or gamepad_button_check(0, gp_padd)
            or gamepad_axis_value(0, gp_axislv) > 0;
            
    case input.left:
        return keyboard_check(vk_left)
            or gamepad_button_check(0, gp_padl)
            or gamepad_axis_value(0, gp_axislh) < 0;
            
    case input.right:
        return keyboard_check(vk_right)
            or gamepad_button_check(0, gp_padr)
            or gamepad_axis_value(0, gp_axislh) > 0;
}
