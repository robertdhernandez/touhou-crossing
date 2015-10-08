/// input_get_distance()

var gp_x = gamepad_axis_value(0, gp_axislh);
var gp_y = gamepad_axis_value(0, gp_axislv);

if (gp_x == 0 and gp_y == 0)
    return input_check(input.up) or input_check(input.down) or input_check(input.left) or input_check(input.right);

return min(point_distance(0, 0, gp_x, gp_y), 1);
