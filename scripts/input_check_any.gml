/// input_check_any()

return keyboard_check(vk_anykey) or mouse_check_button(mb_any)
    or mouse_wheel_up() or mouse_wheel_down()
    or gamepad_axis_value(0, gp_axislh) != 0 or gamepad_axis_value(0, gp_axislv) != 0
    or gamepad_axis_value(0, gp_axisrh) != 0 or gamepad_axis_value(0, gp_axisrv) != 0
    or gamepad_button_check(0, gp_face1) or gamepad_button_check(0, gp_face2)
    or gamepad_button_check(0, gp_face3) or gamepad_button_check(0, gp_face4)
    or gamepad_button_check(0, gp_padu) or gamepad_button_check(0, gp_padd)
    or gamepad_button_check(0, gp_padl) or gamepad_button_check(0, gp_padr)
    or gamepad_button_check(0, gp_stickl) or gamepad_button_check(0, gp_stickr)
    or gamepad_button_check(0, gp_shoulderl) or gamepad_button_check(0, gp_shoulderr)
    or gamepad_button_check(0, gp_select) or gamepad_button_check(0, gp_start)
    or gamepad_button_check(0, gp_shoulderlb) or gamepad_button_check(0, gp_shoulderrb);
