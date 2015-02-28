/// input_get_direction()

var xx, yy;

var gp_x = gamepad_axis_value(0, gp_axislh);
var gp_y = gamepad_axis_value(0, gp_axislv);

if (gp_x == 0 and gp_y == 0)
{
    xx = input_check(input.right) - input_check(input.left);
    yy = input_check(input.down) - input_check(input.up);
}
else
{
    xx = gp_x;
    yy = gp_y;
}

return point_direction(0, 0, xx, yy);