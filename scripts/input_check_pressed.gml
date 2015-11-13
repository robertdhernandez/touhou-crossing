/// input_check_pressed(input)

switch (argument0)
{
    case input.a: 
        return keyboard_check_pressed(ord('Z')) 
            or gamepad_button_check_pressed(0, gp_face1);
        
    case input.b: 
        return keyboard_check_pressed(ord('X')) 
            or gamepad_button_check_pressed(0, gp_face2);
            
    case input.c: 
        return keyboard_check_pressed(ord('C')) 
            or gamepad_button_check_pressed(0, gp_face3);
            
    case input.d: 
        return keyboard_check_pressed(ord('V')) 
            or gamepad_button_check_pressed(0, gp_face4);
            
    case input.start:
        return keyboard_check_pressed(vk_enter) 
            or gamepad_button_check_pressed(0, gp_start);
        
    case input.up:
        return keyboard_check_pressed(vk_up) 
            or gamepad_button_check_pressed(0, gp_padu)
            or (global.axislv_previous > -analogue_trigger and gamepad_axis_value(0, gp_axislv) <= -analogue_trigger);
        
    case input.down:
        return keyboard_check_pressed(vk_down) 
            or gamepad_button_check_pressed(0, gp_padd)
            or (global.axislv_previous < analogue_trigger and gamepad_axis_value(0, gp_axislv) >= analogue_trigger);
            
    case input.left:
        return keyboard_check_pressed(vk_left)
            or gamepad_button_check_pressed(0, gp_padl)
            or (global.axislh_previous > -analogue_trigger and gamepad_axis_value(0, gp_axislh) <= -analogue_trigger);
            
    case input.right:
        return keyboard_check_pressed(vk_right)
            or gamepad_button_check_pressed(0, gp_padr)
            or (global.axislh_previous < analogue_trigger and gamepad_axis_value(0, gp_axislh) >= analogue_trigger);
            
    case input.hk_1:
        return keyboard_check_pressed(ord('1'));
    
    case input.hk_2:
        return keyboard_check_pressed(ord('2'));
        
    case input.hk_3:
        return keyboard_check_pressed(ord('3'));
        
    case input.hk_4:
        return keyboard_check_pressed(ord('4'));
        
    case input.hk_5:
        return keyboard_check_pressed(ord('5'));
}
